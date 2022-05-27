//
//  SongSelectionTableViewCell.swift
//  BodyMotion
//
//  Created by Carlos Rafael Hasselmann Forbeck on 10/02/22.
//

import UIKit

class SongSelectionTableViewCell: UITableViewCell {
    
    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var album: UIImageView!
    @IBOutlet weak var songName: UILabel!
    @IBOutlet weak var artistName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
