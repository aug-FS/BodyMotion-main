//
//  PlayersTableViewCell.swift
//  BodyDetection
//
//  Created by Rafael Forbeck on 17/05/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import UIKit

class PlayersTableViewCell: UITableViewCell {

    @IBOutlet weak var playerNameLabel: UILabel!
    
    private weak var therapistVC: TherapistViewController!
    
    private var player: Player!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setup(_ player: Player, therapistVC: TherapistViewController) {
        self.player = player
        self.therapistVC = therapistVC
        playerNameLabel.text = player.name
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func editPressed(_ sender: Any) {
        therapistVC.editPlayer(player: player)
    }
    
}
