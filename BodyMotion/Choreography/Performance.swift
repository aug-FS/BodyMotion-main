//
//  Performance.swift
//  BodyDetection
//
//  Created by Rafael Forbeck on 11/01/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import Foundation
import UIKit

class Performance {
    
    private var choreography: Choreography
    private var tracksPerformance = [TrackPerformance]()
    
    private var score: Int = 0
    private var realTimeScore: Int = 0
    private var percents = [Float]()
    private var scores = [Int]()
    private var starsScore = [Int]()
    private var starsLight = 0
    
    private var active: Bool = false
    private var time: TimeInterval = 0
    
    var phrases: Phrases!
    
    init(choreography: Choreography, maxDelay: TimeInterval, date: Date, limbsActive: [Bool], viewsList: [[UIView]]?) {
        self.choreography = choreography
        
        var totalSteps = 0
        for (index, track) in choreography.getTracks().enumerated() {
            if limbsActive[index] {
                percents.append(Float(0))
                totalSteps += track.getSteps().count
                tracksPerformance.append(TrackPerformance(track: track, maxDelay: maxDelay, views: viewsList?[index]))
            }
        }
        
        starsScore.append(totalSteps * 16)
        starsScore.append(totalSteps * 32)
        starsScore.append(totalSteps * 48)
        starsScore.append(totalSteps * 64)
        starsScore.append(totalSteps * 80)
    }
    
    func start() {
        active = true
    }
    
    func Update(deltaTime: TimeInterval, phrases: Phrases) {
        
        if !active {
            return
        }
        
        time += deltaTime
        
        for returnPose in choreography.returnedPoses {
            returnPose.Update(deltaTime: deltaTime)
        }
        
        for track in tracksPerformance {
            track.Update(choreographyTime: time, deltaTime: deltaTime, realTimeScore: &realTimeScore, phareses: phrases)
        }
        
        if starsLight < 5 {
            if realTimeScore >= starsScore[starsLight] {
                starsLight += 1
            }
        }
        
        phrases.Update(deltaTime: deltaTime)
    }
    
    func calculateScore() {
        for (index, trackPerformance) in tracksPerformance.enumerated() {
            percents[index] = trackPerformance.getPercent()
        }
        
        for track in tracksPerformance {
            let trackScore = track.getScore()
            scores.append(trackScore)
            score += trackScore
        }
    }
    
    func getTrackCount() -> Int {
        return scores.count
    }
    
    func getPercent(index: Int) -> Float {
        return percents[index]
    }
    
    func getScore(index: Int) -> Int {
        return scores[index]
    }
    
    func getRealTimeScore() -> Int {
        return realTimeScore
    }
    
    func getScorelabel(index: Int) -> String {
        return tracksPerformance[index].getScoreLabel()
    }
    
    func saveCSVFile() {
        let file = CSVPerformSaver(therapistName: "Nome do terapeuta", patientName: "Nome do paciente", songName: "Maria Bonita", score: score, percents: percents)
        for track in tracksPerformance {
            for step in track.getStepsPerformance() {
                let time = step.getTime()
                let member = track.getMember()
                let movement = step.getMoveName()
                let quality = step.getQuality()
                file.update(time: time, member: member, movement: movement, quality: quality)
            }
        }
        let fileName = "\(Game.instance.getPlayerName()) | \(Game.instance.getSongName()) | \(score)"
        file.save(label: fileName)
    }
    
    func getScore() -> Int {
        return score
    }
    
    func getStarsLight() -> Int {
        return starsLight
    }
}
