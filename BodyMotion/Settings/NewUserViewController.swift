//
//  NewUserViewController.swift
//  BodyDetection
//
//  Created by Rafael Forbeck on 17/05/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import UIKit

enum Mode {
    case createPlayer
    case editPlayer
    case createTherapist
    case editTherapist
}

class NewUserViewController: UIViewController, UITextFieldDelegate {
    
    var screenUpdateDelegate: ScreenUpdateDelegate?
    
    var mode: Mode!

    @IBOutlet weak var playerNameField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        playerNameField.delegate = self
        playerNameField.becomeFirstResponder()
        
        if mode == .editPlayer {
            playerNameField.text = Game.instance.player.name
        } else if mode == .editTherapist {
            playerNameField.text = Game.instance.therapist.name
        }
    }
    
    @IBAction func savePressed(_ sender: Any) {
        
        if let playerName = playerNameField.text {
            insert(playerName: playerName)
        }
    }
    
    private func insert (playerName: String) {
        
        let name = playerName.trimmingCharacters(in: .whitespaces)
        
        switch mode {
        case .createPlayer:
            PlayerBank.instance.insertPlayer(name: name, therapist: Game.instance.therapist)
        case .editPlayer:
            Game.instance.player.name = name
            PlayerBank.instance.update()
        case .createTherapist:
            if TherapistBank.instance.therapistExists(therapistName: name) {
                return
            }
            TherapistBank.instance.insertTherapist(name: name)
        case .editTherapist:
            Game.instance.therapist.name = name
            TherapistBank.instance.update()
        case .none:
            break
        }
        
        if let delegate = screenUpdateDelegate {
            delegate.update()
        }
        
        dismiss(animated: true)
    }
    
    @IBAction func cancelPressed(_ sender: Any) {
        dismiss(animated: true)
    }
}
