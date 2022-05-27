//
//  GameViewControllerUpdate.swift
//  BodyDetection
//
//  Created by Rafael Forbeck on 16/05/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import Foundation
import UIKit

extension GameViewController {
    
    enum GameStatus { case nobody, positioning, waiting, countdown, playing, pause, score }
    
    internal func update() {
        
        let time = NSDate().timeIntervalSince1970
        
        var deltaTime: TimeInterval
        if lastUpdate == 0.0 {
            deltaTime = 0
        } else {
            deltaTime = time - lastUpdate
        }
        lastUpdate = time
        
        switch status {
        case .nobody:
            nobodyUpdate(deltaTime)
        case .positioning:
            positioningUpdate(deltaTime)
        case .waiting:
            waitingUpdate(deltaTime)
        case .countdown:
            countDownUpdate(deltaTime)
        case .playing:
            playingUpdate(deltaTime)
        case .pause:
            pauseUpdate(deltaTime)
        case .score:
            scoreUpdate(deltaTime)
        }
    }
    
    internal func toNobodyStatus() {
        status = .nobody
        startButton.isHidden = true
        UIView.animate(withDuration: 1) {
            self.positionCorners.alpha = 1
            self.positionInstruction.alpha = 1
            self.handsUpInstruction.alpha = 0
            self.avpController.view.alpha = 0
        }
    }
    
    internal func nobodyUpdate(_ deltaTime: TimeInterval) {
        
    }
    
    internal func toPositioningStatus() {
        startButton.isHidden = true
        status = .positioning
        positioningTime = 0
    }
    
    internal func positioningUpdate(_ deltaTime: TimeInterval) {
        positioningTime += deltaTime
        if positioningTime > 2 {
            toWaitingStatus()
        }
    }
    
    internal func toWaitingStatus() {
        status = .waiting
        startButton.isHidden = false
        UIView.animate(withDuration: 1) {
            self.positionInstruction.alpha = 0
            self.handsUpInstruction.alpha = 1
            self.avpController.view.alpha = 1
        }
    }
    
    internal func waitingUpdate(_ deltaTime: TimeInterval) {
        for maoPraCima in maosPraCima {
            if maoPraCima.checkPose() {
                toCountdownStatus()
            }
        }
    }
    
    internal func toCountdownStatus() {
        startButton.isHidden = true
        status = .countdown
        countdownTime = 3.5
        UIView.animate(withDuration: 1) {
            self.handsUpInstruction.alpha = 0
            self.countdownLabel.alpha = 1
        }
    }
    
    internal func countDownUpdate(_ deltaTime: TimeInterval) {
        countdownTime -= deltaTime
        if countdownTime > 2 {
            countdownLabel.text = "3"
        } else if countdownTime > 1 {
            countdownLabel.text = "2"
        } else if countdownTime > 0 {
            countdownLabel.text = "1"
        } else {
            countdownLabel.alpha = 0
            toPlayingStatus()
        }
    }
    
    internal func toPlayingStatus() {
        status = .playing
        player.play()
        performance.start()
        print("play")
    }
    
    internal func playingUpdate(_ deltaTime: TimeInterval) {
        performance.Update(deltaTime: deltaTime, phrases: phrases)
        scoreLabel.text = numberFormatter.string(for: performance.getRealTimeScore())
        if starsLight < performance.getStarsLight() {
            stars[starsLight].image = #imageLiteral(resourceName: "star_full")
            starsLight += 1
        }
    }
    
    internal func toPauseStatus() {
        backStatusFromPause = status
        status = .pause
        player.pause()
    
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "Pause") as! PauseViewController
        vc.gameViewController = self
        self.present(vc, animated: true, completion: nil)
    }
    
    internal func fromPauseStatus() {
        status = backStatusFromPause
        if status == .playing {
            player.play()
        }
    }
    
    internal func pauseUpdate(_ deltaTime: TimeInterval) {
        
    }
    
    internal func scoreUpdate(_ deltaTime: TimeInterval) {
        
        for maoPraCima in maosPraCima {
            if maoPraCima.checkPose() {
                scoreVC?.playAgain()
            }
        }
    }
}
