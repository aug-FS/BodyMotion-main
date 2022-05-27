//
//  TrackPerformance.swift
//  BodyDetection
//
//  Created by Rafael Forbeck on 27/01/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import Foundation
import UIKit

class TrackPerformance {
    
    private var track: Track
    private var stepsPerformance = [StepPerformance]()
    
    init(track: Track, maxDelay: TimeInterval, views: [UIView]?) {
        self.track = track
        
        // Criar os steps performance
        for (index, stepInTrack) in track.getSteps().enumerated() {
            stepsPerformance.append(StepPerformance(stepInTrack: stepInTrack, maxDelay: maxDelay, view: views?[index]))
        }
    }
    
    func Update(choreographyTime: TimeInterval, deltaTime: TimeInterval, realTimeScore: inout Int, phareses: Phrases) {
        
        for step in stepsPerformance {
            step.Update(choreographyTime: choreographyTime, deltaTime: deltaTime, realTimeScore: &realTimeScore, phrases: phareses)
        }
    }
    
    func getPercent() -> Float {
        var sum = Float(0)
        for stepPerformance in stepsPerformance {
            sum += stepPerformance.getQuality()
        }
        if stepsPerformance.count == 0 {
            return 1
        }
        return sum / Float(stepsPerformance.count)
    }
    
    func getScore() -> Int {
        var score = 0
        for step in stepsPerformance {
            score += Int(step.getQuality() * 100)
        }
        
        return score
    }
    
    func getScoreLabel() -> String {
        return track.getName()
    }
    
    func getStepsPerformance() -> [StepPerformance] {
        return stepsPerformance
    }
    
    func getMember() -> Member {
        return track.getMember()
    }
}
