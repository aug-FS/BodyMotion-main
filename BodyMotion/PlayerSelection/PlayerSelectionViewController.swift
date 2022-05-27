//
//  PlayerSelectionViewController.swift
//  BodyDetection
//
//  Created by Rafael Forbeck on 16/05/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import UIKit

class PlayerSelectionViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var noRegistryLabel: UILabel!
    @IBOutlet weak var playersTable: UITableView!
    
    var players: [Player]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        players = Game.instance.therapist.patients.allObjects as? [Player]
        
        noRegistryLabel.isHidden = !players.isEmpty

        playersTable.dataSource = self
        playersTable.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let player = players[indexPath.row]
        
        let cell = playersTable.dequeueReusableCell(withIdentifier: "playerCell", for: indexPath) as! PlayerSelectionTableViewCell
        
        cell.setup(player: player)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let player = players[indexPath.row]
        selectPlayer(player)
    }
    
    @IBAction func backPressed(_ sender: Any) {
        navigationController?.popViewController(animated: false)
    }
    
    func selectPlayer(_ player: Player) {
        Game.instance.setPlayer(player)
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SongSelection")
        self.navigationController?.pushViewController(vc, animated: false)
    }
}
