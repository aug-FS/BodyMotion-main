//
//  PlayerSelectionTableViewCell.swift
//  BodyDetection
//
//  Created by Rafael Forbeck on 16/05/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import UIKit

class PlayerSelectionTableViewCell: UITableViewCell {

    @IBOutlet weak var playerName: UILabel!
    
    func setup(player: Player) {
        playerName.text = player.name
    }
}
