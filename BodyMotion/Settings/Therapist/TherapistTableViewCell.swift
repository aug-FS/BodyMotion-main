//
//  TherapistTableViewCell.swift
//  BodyMotion
//
//  Created by Rafael Forbeck on 26/08/21.
//

import UIKit

class TherapistTableViewCell: UITableViewCell {
    
    @IBOutlet weak var therapistName: UILabel!
    private var therapist: Therapist!
    private weak var therapistsVC: TherapistsViewController!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setup(_ therapist: Therapist, therapistsVC: TherapistsViewController) {
        
        self.therapist = therapist
        self.therapistsVC = therapistsVC
        therapistName.text = therapist.name
    }
    
    @IBAction func itemSelected(_ sender: Any) {
        therapistsVC.editTherapist(therapist: therapist)
    }
    
}
