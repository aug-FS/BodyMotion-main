//
//  Game.swift
//  BodyDetection
//
//  Created by Rafael Forbeck on 17/05/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import Foundation

class Game {
    
    public static var instance = Game()
    
    private (set) var player: Player!
    private (set) var therapist: Therapist!
    private (set) var song: Song!
    
    private init() {
        
    }
    
    func setPlayer(_ player: Player) {
        self.player = player
        PlayerSettings.loadLimbs(player: player)
    }
    
    func setTherapist(_ therapist: Therapist) {
        self.therapist = therapist
    }
    
    func setSong(song: Song) {
        self.song = song
    }
    
    func setupJoints() {
        Joints.instance.disableJoints(limbs: player.limbs)
    }
    
    func updateScore(newScore: Int) {
        ScoreBank.instance.addScore(player: player, song: song, score: newScore)
    }
    
    func getScoreHistory() -> [Int] {
        return ScoreBank.instance.getScores(player: player, song: song)
    }
    
    func getPlayerName() -> String {
        return player.name
    }
    
    func getSongName() -> String {
        return song.songName
    }
    
    func getIstructionVideoName() -> String? {
        return song.instrutionVideo
    }
    
    func getPlayer() -> Player {
        return player
    }
}
