//
//  TherapistSelectionTableViewCell.swift
//  BodyMotion
//
//  Created by Rafael Forbeck on 02/09/21.
//

import UIKit

class TherapistSelectionTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    func setup(_ therapist: Therapist) {
        nameLabel.text = therapist.name
    }
}
