//
//  GameViewController.swift
//  BodyDetection
//
//  Created by Rafael Forbeck on 01/04/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import UIKit
import RealityKit
import ARKit
import Combine
import AVKit

class GameViewController: UIViewController, ARSessionDelegate {
    
    @IBOutlet var arView: ARView!
    @IBOutlet weak var videoView: UIView!
    @IBOutlet weak var instructionsView: UIView!
    @IBOutlet weak var positionInstruction: UIImageView!
    @IBOutlet weak var positionCorners: UIImageView!
    @IBOutlet weak var handsUpInstruction: UIImageView!
    @IBOutlet weak var countdownLabel: UILabel!
    @IBOutlet weak var pauseButton: UIButton!
    @IBOutlet weak var startButton: UIButton!
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var phraseLabel: UILabel!
    
    @IBOutlet var stars: [UIImageView]!
    var starsLight = 0
    var scoreVC: ScoreViewController?
    
    var status: GameStatus = .nobody
    var backStatusFromPause: GameStatus = .nobody
    var pauseBackStatus: GameStatus = .nobody
    var positioningTime = TimeInterval()
    var countdownTime = TimeInterval()
    
    var player: AVPlayer!
    var avpController = AVPlayerViewController()
    
    let characterAnchor = AnchorEntity()
    
    var lastUpdate: TimeInterval = 0
    
    var performance: Performance!
    var maosPraCima = [PoseBank.flexaoOmbroDireito120, PoseBank.flexaoOmbroEsquerdo120]
    
    var nobodyInSceneFramesCount = 0
    
    let numberFormatter = NumberFormatter()
    
    var phrases: Phrases!
    
//    var song: AVAudioPlayer!
    
    override func viewWillAppear(_ animated: Bool) {
//        arView.transform = CGAffineTransform(scaleX: -1, y: 1)
//        arView.transform = CGAffineTransform(rotationAngle: -CGFloat.pi * 0.5).scaledBy(x: 1, y: -1)
//        reverseView.transform = CGAffineTransform(scaleX: -1, y: 1)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        arView.session.delegate = self
        
        guard ARBodyTrackingConfiguration.isSupported else {
            fatalError("This feature is only supported on devices with an A12 chip")
        }
        
        // Run a body tracking configration.
        let configuration = ARBodyTrackingConfiguration()
        arView.session.run(configuration)
        arView.scene.addAnchor(characterAnchor)
        
        Game.instance.setupJoints()
        Joints.instance.setup(characterAnchor: characterAnchor)
        
        let song = Game.instance.song!

        switch song.songID {
        case .mariaBonita:
            TrackBank.setupMariaBonita()
        case .rockWithYou:
            TrackBank.setupRock()
        case .stronger:
            TrackBank.setupStronger()
        }
        
        performance = Performance(choreography: song.choreography, maxDelay: 2.0, date: Date.init(timeIntervalSinceNow: 0), limbsActive: Game.instance.getPlayer().limbs, viewsList: nil)
        
        let moviePath = Bundle.main.path(forResource: song.videoName, ofType: nil)
        if let path = moviePath {
            let url = NSURL.fileURL(withPath: path)
            self.player = AVPlayer(url: url)
            self.avpController = AVPlayerViewController()
            self.avpController.player = self.player
            self.avpController.showsPlaybackControls = false
            avpController.view.frame = videoView.frame
            avpController.view.transform = CGAffineTransform(scaleX: -1, y: 1);
            avpController.view.layer.zPosition = 1
            avpController.view.alpha = 0
            self.addChild(avpController)
            self.view.addSubview(avpController.view)
        }
        
        NotificationCenter.default.addObserver(self, selector: #selector(playerDidFinishPlaying), name: .AVPlayerItemDidPlayToEndTime, object: nil)

        instructionsView.layer.zPosition = 2
        handsUpInstruction.alpha = 0
        countdownLabel.alpha = 0
//        loadSound()
        
        pauseButton.layer.zPosition = 3
        startButton.layer.zPosition = 3
        
        removeLoadingScene()
        
        numberFormatter.usesGroupingSeparator = true
        numberFormatter.groupingSeparator = "."
        numberFormatter.groupingSize = 3
        
        phrases = Phrases(label: phraseLabel)
        
        startButton.isHidden = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    override var prefersHomeIndicatorAutoHidden: Bool {
        return true
    }
    
    @objc func playerDidFinishPlaying(note: NSNotification) {
        gameOver()
    }
    
    private func gameOver() {
        status = .score
        performance.calculateScore()
        performance.saveCSVFile()
        
        Game.instance.updateScore(newScore: performance.getScore())
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "Score") as! ScoreViewController
        scoreVC = vc
        vc.performance = performance
        self.navigationController?.pushViewController(vc, animated: false)
    }
   
    func session(_ session: ARSession, didUpdate frame: ARFrame) {
        update()
        
        checkAnybodyInScene()
    }
    
    func session(_ session: ARSession, didUpdate anchors: [ARAnchor]) {
        
        if status == .nobody {
            toPositioningStatus()
        }
        
        nobodyInSceneFramesCount = 0
        
        for anchor in anchors {
            guard let bodyAnchor = anchor as? ARBodyAnchor else { continue }
            
            // Update the position of the character anchor's position.
            let bodyPosition = simd_make_float3(bodyAnchor.transform.columns.3)
            characterAnchor.position = bodyPosition
            // Also copy over the rotation of the body anchor, because the skeleton's pose
            // in the world is relative to the body anchor's rotation.
            characterAnchor.orientation = Transform(matrix: bodyAnchor.transform).rotation
            
            // skeleton
            let skeleton = bodyAnchor.skeleton
            // all the joints relatives to root
            let jointTransforms = skeleton.jointModelTransforms
            
            // Interating over all joints
            for (i, jointTransform) in jointTransforms.enumerated() {
//                print("\(i) - \(skeleton.definition.jointNames[i])")
                
                // parent index
                let parentIndex = skeleton.definition.parentIndices[i]
                // check if it is not root
                guard parentIndex != -1 else {continue}
                
                Joints.instance.updateJoint(index: i, coord: simd_make_float3(jointTransform.columns.3))
            }
        }
    }
    
    private func checkAnybodyInScene() {
        
        if nobodyInSceneFramesCount > 10 {
            return
        }
        
        nobodyInSceneFramesCount += 1
        if nobodyInSceneFramesCount == 10 {
            if status == .positioning ||
                status == .waiting {
                toNobodyStatus()
            }
        }
    }
    
    @IBAction func startPressed(_ sender: Any) {
        toCountdownStatus()
        startButton.isHidden = true
    }
    
    @IBAction func pausePressed(_ sender: Any) {
        if status != .pause {
            toPauseStatus()
        } else {
            fromPauseStatus()
        }
    }
    
    private func removeLoadingScene() {
        for (i, vc) in navigationController!.viewControllers.enumerated() {
            if vc is LoadingViewController {
                navigationController!.viewControllers[i].dismiss(animated: false, completion: nil)
                navigationController!.viewControllers.remove(at: i)
                return
            }
        }
    }
    
    func exit() {
        navigationController?.popViewController(animated: true)
    }
}

