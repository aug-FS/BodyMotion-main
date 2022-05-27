//
//  PlayerBank.swift
//  BodyDetection
//
//  Created by Rafael Forbeck on 17/05/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import UIKit
import CoreData

class PlayerBank {
    
    public static var instance = PlayerBank()
    
    var players = [Player]()
    
    private let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    private init() {
        
        fetchPlayers()
    }
    
    func fetchPlayers() {
        // Fetch the data from Core Data
        do {
            self.players = try context.fetch(Player.fetchRequest())
            
        } catch {
            
        }
        players.sort { $0.name < $1.name }
    }
    
    func insertPlayer(name: String, therapist: Therapist) {
        
        let player = Player(context: context)
        player.name = name
        player.therapist = therapist
        player.id = UUID()
        player.limbs = [true, true, true, true, true, true]
        
        do {
            try context.save()
        } catch {
            
        }
        fetchPlayers()
    }
    
    func removePlayer(playerToRemove: Player) {
        
        context.delete(playerToRemove)
        
        do {
            try context.save()
        } catch {
                
        }
        
        fetchPlayers()
    }
    
    func update() {
        
        do {
            try context.save()
        } catch {
            
        }
        
        fetchPlayers()
    }
    
    func playerExists(playerName: String) -> Bool {
        for player in players {
            if player.name == playerName {
                return true
            }
        }
        return false
    }
    
    
}
