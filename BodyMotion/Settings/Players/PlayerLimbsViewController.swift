//
//  PlayerLimbsViewController.swift
//  BodyMotion
//
//  Created by Rafael Forbeck on 23/05/21.
//

import UIKit

class PlayerLimbsViewController: UIViewController, ScreenUpdateDelegate {
    
    @IBOutlet var enableLabels: [UILabel]!
    @IBOutlet var switchies: [UISwitch]!
    @IBOutlet weak var playerName: UILabel!
    
    private var player: Player!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Game.instance.player
        playerName.text = player.name
        
        for (i, limb) in player.limbs.enumerated() {
            print(i)
            if limb {
                enableLabels[i].text = "ativado"
                enableLabels[i].textColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
                switchies[i].isOn = true
            } else {
                enableLabels[i].text = "desativado"
                enableLabels[i].textColor = #colorLiteral(red: 1, green: 0, blue: 0.01006428432, alpha: 1)
                switchies[i].isOn = false
            }
        }
    }
    
    @IBAction func limbChanged(_ sender: UISwitch) {
        
        if !sender.isOn {
            var count = 0
            for limb in player.limbs {
                if limb {
                    count += 1
                }
            }
            if count <= 1 {
                sender.isOn = true
                return
            }
        }
        
        let i = sender.tag
        if sender.isOn {
            enableLabels[i].text = "ativado"
            enableLabels[i].textColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
            switchies[i].isOn = true
        } else {
            enableLabels[i].text = "desativado"
            enableLabels[i].textColor = #colorLiteral(red: 1, green: 0, blue: 0.01006428432, alpha: 1)
            switchies[i].isOn = false
        }
        player.limbs[i] = sender.isOn
        PlayerSettings.saveLimbs(player: player)
    }
    
    func update() {
        playerName.text = player.name
    }
    
    @IBAction func editPressed(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "NewPlayer") as! NewUserViewController
        
        vc.screenUpdateDelegate = self
        vc.mode = .editPlayer
        
        self.present(vc, animated: true)

    }
    
    @IBAction func historicPressed(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "Historic") as! PlayerHistoricViewController
        vc.player = player
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    @IBAction func backPressed(_ sender: Any) {
        navigationController?.popViewController(animated: false)
    }
}
