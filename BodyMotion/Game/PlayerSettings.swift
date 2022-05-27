//
//  PlayerSettings.swift
//  BodyMotion
//
//  Created by Rafael Forbeck on 23/05/21.
//

import Foundation

class PlayerSettings {
    
    private static func getKey(player: Player) -> String {
        return "\(player.name)-limbs"
    }
    
    static func loadLimbs(player: Player) {
        let key = getKey(player: player)
        if UserDefaults.isKeyPresentInUserDefaults(key: key) {
            player.limbs = UserDefaults.standard.array(forKey: key) as! [Bool]
        }
    }
    
    static func saveLimbs(player: Player) {
        UserDefaults.standard.setValue(player.limbs, forKey: getKey(player: player))
    }
}
