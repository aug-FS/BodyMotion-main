//
//  TestChoreographyViewController.swift
//  BodyMotion
//
//  Created by Carlos Rafael Hasselmann Forbeck on 22/11/21.
//

import UIKit
import ARKit
import RealityKit

class TestChoreographyViewController: UIViewController, ARSessionDelegate {
    
    @IBOutlet var arView: ARView!
    
    @IBOutlet weak var rightArmLabel: UILabel!
    @IBOutlet weak var leftArmLabel: UILabel!
    @IBOutlet weak var rightlegLabel: UILabel!
    @IBOutlet weak var leftLegLabel: UILabel!
    @IBOutlet weak var trunkLabel: UILabel!
    @IBOutlet weak var headLabel: UILabel!
    
    @IBOutlet weak var rightArmStack: UIStackView!
    @IBOutlet weak var leftArmStack: UIStackView!
    @IBOutlet weak var rightLegStack: UIStackView!
    @IBOutlet weak var leftLegStack: UIStackView!
    @IBOutlet weak var trunkStack: UIStackView!
    @IBOutlet weak var headStack: UIStackView!
    
    @IBOutlet weak var phraseLabel: UILabel!
    var phrases: Phrases!
    
    var scoreLabels = [UILabel]()
    
    var rightArmViews = [UIView]()
    var leftArmViews = [UIView]()
    var rightLegViews = [UIView]()
    var leftLegViews = [UIView]()
    var trunkViews = [UIView]()
    var headViews = [UIView]()
    
    let characterAnchor = AnchorEntity()
    
    var performance: Performance!
    var lastUpdate: TimeInterval = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        arView.session.delegate = self

        guard ARBodyTrackingConfiguration.isSupported else {
            fatalError("This feature is only supported on devices with an A12 chip")
        }
        
//         Run a body tracking configration.
        let configuration = ARBodyTrackingConfiguration()
        arView.session.run(configuration)
        arView.scene.addAnchor(characterAnchor)
        
//        Game.instance.setupJoints()
        Joints.instance.setup(characterAnchor: characterAnchor)
        
        scoreLabels.append(rightArmLabel)
        scoreLabels.append(leftArmLabel)
        scoreLabels.append(rightlegLabel)
        scoreLabels.append(leftLegLabel)
//        scoreLabels.append(trunkLabel)
        
        TrackBank.setupMariaBonita()
        let choreography = ChoreographyBank.mariaBonita
        
        // Braço direito
        for _ in 0..<choreography.getTracks()[0].getSteps().count {
            let view = UIView()
            rightArmViews.append(view)
            rightArmStack.addArrangedSubview(view)
        }
        
        // Braço esquerdo
        for _ in 0..<choreography.getTracks()[1].getSteps().count {
            let view = UIView()
            leftArmViews.append(view)
            leftArmStack.addArrangedSubview(view)
        }

        // Perna direita
        for _ in 0..<choreography.getTracks()[2].getSteps().count {
            let view = UIView()
            rightLegViews.append(view)
            rightLegStack.addArrangedSubview(view)
        }

        // Perna esquerda
        for _ in 0..<choreography.getTracks()[3].getSteps().count {
            let view = UIView()
            leftLegViews.append(view)
            leftLegStack.addArrangedSubview(view)
        }
        
        // Tronco
//        for _ in 0..<choreography.getTracks()[4].getSteps().count {
//            let view = UIView()
//            trunkViews.append(view)
//            trunkStack.addArrangedSubview(view)
//        }
//
//        // Cabeça
//        for _ in 0..<choreography.getTracks()[5].getSteps().count {
//            let view = UIView()
//            headViews.append(view)
//            headStack.addArrangedSubview(view)
//        }
//
        
        let therapists = TherapistBank.instance.therapists
        
        Game.instance.setTherapist(therapists[0])
        let players = Game.instance.therapist.patients.allObjects as! [Player]
        
        Game.instance.setPlayer(players[0])
        phrases = Phrases(label: phraseLabel)
        
        performance = Performance(choreography: choreography, maxDelay: 20, date: Date.init(timeIntervalSinceNow: 0), limbsActive: Game.instance.getPlayer().limbs, viewsList: [rightArmViews, leftArmViews, rightLegViews, leftLegViews, trunkViews, headViews])
        
        // START
        performance.start()
        print("play")
    }
    
    func session(_ session: ARSession, didUpdate frame: ARFrame) {
        update()
    }
    
    func session(_ session: ARSession, didUpdate anchors: [ARAnchor]) {

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
    
    
    @IBAction func calcularPressed(_ sender: Any) {
        
        for index in 0..<scoreLabels.count {
            let label = performance.getScorelabel(index: index)
            let percent = performance.getPercent(index: index) * 100
            scoreLabels[index].text = "\(label): \(String(format: "%.2f", percent))"
        }
    }
    
    func update() {
        
        let time = NSDate().timeIntervalSince1970
        
        var deltaTime: TimeInterval
        if lastUpdate == 0.0 {
            deltaTime = 0
        } else {
            deltaTime = time - lastUpdate
        }
        lastUpdate = time
        
        performance.Update(deltaTime: deltaTime, phrases: phrases)
    }
}
