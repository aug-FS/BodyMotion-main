//
//  TherapistViewController.swift
//  BodyDetection
//
//  Created by Rafael Forbeck on 17/05/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import UIKit

class TherapistViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, ScreenUpdateDelegate {
    
    @IBOutlet weak var therapistName: UILabel!
    @IBOutlet weak var playersTable: UITableView!
    
    @IBOutlet weak var label: UILabel!
    
    var screenUpdateDelegate: ScreenUpdateDelegate?
    
    private var therapist: Therapist!
    private var players: [Player]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        therapist = Game.instance.therapist
        
        players = therapist.patients.allObjects as? [Player]

        therapistName.text = therapist.name
        playersTable.delegate = self
        playersTable.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        therapist.patients.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = playersTable.dequeueReusableCell(withIdentifier: "playersCell", for: indexPath) as! PlayersTableViewCell
        let player = players[indexPath.row]
        cell.setup(player, therapistVC: self)
        
        return cell
    }
    
    func reload() {
        
    }
    
    @IBAction func newPressed(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "NewPlayer") as! NewUserViewController
        
        vc.screenUpdateDelegate = self
        vc.mode = .createPlayer
        
        self.present(vc, animated: true)
    }
    
    @IBAction func backPressed(_ sender: Any) {
        navigationController?.popViewController(animated: false)
    }
    
    @IBAction func editTherapist(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "NewPlayer") as! NewUserViewController
        
        vc.screenUpdateDelegate = self
        vc.mode = .editTherapist
        
        self.present(vc, animated: true)
    }
    
    
    func editPlayer(player: Player) {
        
        Game.instance.setPlayer(player)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "Limbs") as! PlayerLimbsViewController
        Game.instance.setPlayer(player)
        
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    func update() {
        
        if let delegate = screenUpdateDelegate {
            delegate.update()
        }
        
        players = therapist.patients.allObjects as? [Player]
        therapistName.text = therapist.name
        playersTable.reloadData()
    }
    
    
    
//    func showRemoveAlert(player: Player) {
//        let alert = UIAlertController(title: "Atenção", message: "Deseja mesmo excluir o/a paciente \(player.name)?", preferredStyle: .alert)
//        alert.addAction(UIAlertAction(title: "Excluir", style: .destructive, handler: { action in
//            PlayerBank.instance.removePlayer(playerToRemove: player)
//            self.reload()
//        }))
//        alert.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: nil))
//        self.present(alert, animated: true, completion: nil)
//    }
//
//    func editPlayerName(player: Player) {
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let vc = storyboard.instantiateViewController(withIdentifier: "NewPlayer") as! NewUserViewController
//
//        vc.playersSettingsVC = self
//        vc.playerToEdit = player
//        vc.editMode = true
//        self.present(vc, animated: true)
//    }
    
    
}
