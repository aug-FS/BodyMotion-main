//
//  HistoricFileTableViewCell.swift
//  BodyMotion
//
//  Created by Rafael Forbeck on 22/05/21.
//

import UIKit

class HistoricFileTableViewCell: UITableViewCell {
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var songNameLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var fileName: String!
    
    weak var playerHistoricViewController: PlayerHistoricViewController!

    func setup(_ file: HistoricFile) {
        
        fileName = file.fileName
        dateLabel.text = file.date
        songNameLabel.text = file.song
        scoreLabel.text = "Pontuação: \(file.score)"
    }
    
    @IBAction func sharePressed(_ sender: Any) {
        playerHistoricViewController.share(fileName)
    }
}
