//
//  FileTableViewCell.swift
//  BodyDetection
//
//  Created by Rafael Forbeck on 08/05/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import UIKit

class FileTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var fileName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
