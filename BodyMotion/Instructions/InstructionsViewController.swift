//
//  InstructionsViewController.swift
//  BodyMotion
//
//  Created by Carlos Rafael Hasselmann Forbeck on 14/03/22.
//

import UIKit

class InstructionsViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        var videoName = Game.instance.getIstructionVideoName()
    }

    
    @IBAction func backPressed(_ sender: Any) {
        navigationController?.popViewController(animated: false)
    }
}
