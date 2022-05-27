//
//  ScoreBank.swift
//  BodyDetection
//
//  Created by Rafael Forbeck on 17/05/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import Foundation

class ScoreBank {
    
    static var instance = ScoreBank()
    
    private var scorePrefixKey = "score-"
    
    private init () {
        
    }
    
    func getKey(player: Player, song: Song) -> String {
        return scorePrefixKey + player.name + song.songName
    }
    
    func getScores(player: Player, song: Song) -> [Int] {
        let key = getKey(player: player, song: song)
        if UserDefaults.isKeyPresentInUserDefaults(key: key) {
            let scores = UserDefaults.standard.array(forKey: key) as! [Int]
            return scores
        }
        
        return []
    }
    
    func addScore(player: Player, song: Song, score: Int) {
        var scores = getScores(player: player, song: song)
        scores.append(score)
        saveScores(player: player, song: song, scores: scores)
    }
    
    func saveScores(player: Player, song: Song, scores: [Int]) {
        let key = getKey(player: player, song: song)
        UserDefaults.standard.setValue(scores, forKey: key)
    }
}
