//
//  ScoreViewController.swift
//  BodyDetection
//
//  Created by Rafael Forbeck on 16/05/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import UIKit
import Charts
import TinyConstraints
import AVFoundation

class ScoreViewController: UIViewController, ChartViewDelegate {
    
    lazy var lineChartView: LineChartView = {
        let chartView = LineChartView()

        chartView.rightAxis.labelTextColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0)
        chartView.xAxis.enabled = false
        chartView.legend.enabled = false
        chartView.leftAxis.labelTextColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0)
        chartView.leftAxis.gridColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0)
        chartView.rightAxis.gridColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0)
        chartView.animate(xAxisDuration: 0.5)
        
        return chartView
    }()
    
    @IBOutlet weak var phraseLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var rightArmLabel: UILabel!
    @IBOutlet weak var leftArmLabel: UILabel!
    @IBOutlet weak var righrLegLabel: UILabel!
    @IBOutlet weak var leftLegLabel: UILabel!
    @IBOutlet weak var trunkLabel: UILabel!
    @IBOutlet weak var headLabel: UILabel!
    
    @IBOutlet weak var rightArmPercent: UILabel!
    @IBOutlet weak var leftArmPercent: UILabel!
    @IBOutlet weak var rightLegPercent: UILabel!
    @IBOutlet weak var leftLegPercent: UILabel!
    @IBOutlet weak var trunkPercent: UILabel!
    @IBOutlet weak var headPercent: UILabel!
    
    @IBOutlet weak var chartView: UIView!
    
    @IBOutlet var stars: [UIImageView]!
    
    public var performance: Performance!
    
    private var clapsFiles = ["claps1.mp3", "claps2.mp3"]
    private var clapsPlayer: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()

        scoreLabel.text = "\(performance.getScore())"
        var index = 0
        let limbs = Game.instance.getPlayer().limbs
        let tracksCount = performance.getTrackCount()
        if limbs[0] && tracksCount > 0 {
            rightArmPercent.text = "\(performance.getScore(index: index))"
            index += 1
        } else {
            rightArmPercent.isHidden = true
            rightArmLabel.isHidden = true
        }
        if limbs[1] && tracksCount > 1 {
            leftArmPercent.text = "\(performance.getScore(index: index))"
            index += 1
        } else {
            leftArmPercent.isHidden = true
            leftArmLabel.isHidden = true
        }
        if limbs[2] && tracksCount > 2 {
            rightLegPercent.text = "\(performance.getScore(index: index))"
            index += 1
        } else {
            rightLegPercent.isHidden = true
            righrLegLabel.isHidden = true
        }
        if limbs[3] && tracksCount > 3 {
            leftLegPercent.text = "\(performance.getScore(index: index))"
            index += 1
        } else {
            leftLegPercent.isHidden = true
            leftLegLabel.isHidden = true
        }
        if limbs[4] && tracksCount > 4 {
            trunkPercent.text = "\(performance.getScore(index: index))"
            index += 1
        } else {
            trunkPercent.isHidden = true
            trunkLabel.isHidden = true
        }
        if limbs[5] && tracksCount > 5 {
            headPercent.text = "\(performance.getScore(index: index))"
            index += 1
        } else {
            headPercent.isHidden = true
            headLabel.isHidden = true
        }
        
        print("Scores: \(Game.instance.getScoreHistory())")
        
        chartView.addSubview(lineChartView)
        lineChartView.center(in: chartView)
        lineChartView.width(to: chartView)
        lineChartView.height(to: chartView)
        
        setData()
        
        
        
        let starsLight = performance.getStarsLight()
        if starsLight > 0 {
            for i in 1...starsLight {
                stars[i - 1].image = #imageLiteral(resourceName: "star_full")
            }
        }
        
        phraseLabel.text = PhrasesBank.getPhrases(stars: starsLight)
        
        clapsPlayer = loadSound(file: clapsFiles[Int.random(in: 0..<clapsFiles.count)])
        clapsPlayer.play()
        
    }
    
    func loadSound(file: String) -> AVAudioPlayer {
        
        let path = Bundle.main.path(forResource: file, ofType:nil)!
        let url = URL(fileURLWithPath: path)

        var sound: AVAudioPlayer

        do {
            sound = try AVAudioPlayer(contentsOf: url)
        } catch {
            fatalError("Não foi possível abrir o aquivo de áudio")
        }
        return sound
    }
    
    func setData() {
        
        var yValues = [ChartDataEntry]()
        
        var list = Game.instance.getScoreHistory()
        if list.count > 8 {
            list.removeSubrange(0..<list.count - 8)
        }
        for (x, score) in list.enumerated() {
            yValues.append(ChartDataEntry(x: Double(x), y: Double(score)))
        }
        
        let set = LineChartDataSet(entries: yValues)
        
        set.lineWidth = 4
        set.circleColors = [#colorLiteral(red: 0.03418137506, green: 0.6772400141, blue: 0.6370925307, alpha: 1)]
        set.circleHoleColor = #colorLiteral(red: 0.03418137506, green: 0.6772400141, blue: 0.6370925307, alpha: 1)
        set.setColor(#colorLiteral(red: 0.03418137506, green: 0.6772400141, blue: 0.6370925307, alpha: 1))
        set.valueFont = .boldSystemFont(ofSize: 16)
        set.drawVerticalHighlightIndicatorEnabled = false
        set.drawHorizontalHighlightIndicatorEnabled = false
        
        let data = LineChartData(dataSet: set)
        lineChartView.data = data
    }
    
    @IBAction func backPressed(_ sender: Any) {
        removeGameScene()
        removeScoreScene()
    }
    
    func playAgain() {
        
        removeGameScene()
        
        // Adiciona nova cena de loading
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "Loading") as! LoadingViewController
        self.navigationController?.pushViewController(vc, animated: false)
        print("Adicionou a do loading, \(self.navigationController!.viewControllers.count)")
        
        removeScoreScene()
    }
    
    private func removeGameScene() {
        for (i, vc) in navigationController!.viewControllers.enumerated() {
            if vc is GameViewController {
                navigationController!.viewControllers[i].dismiss(animated: false, completion: nil)
                navigationController!.viewControllers.remove(at: i)
                return
            }
        }
    }
    
    private func removeScoreScene() {
        for (i, vc) in navigationController!.viewControllers.enumerated() {
            if vc is ScoreViewController {
                navigationController!.viewControllers[i].dismiss(animated: false, completion: nil)
                navigationController!.viewControllers.remove(at: i)
                return
            }
        }
    }
}
