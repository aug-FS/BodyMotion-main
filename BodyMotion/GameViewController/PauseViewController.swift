//
//  PauseViewController.swift
//  BodyMotion
//
//  Created by Rafael Forbeck on 23/05/21.
//

import UIKit

class PauseViewController: UIViewController {
    
    weak var gameViewController: GameViewController!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func pausePressed(_ sender: Any) {
        gameViewController.fromPauseStatus()
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func exitPressed(_ sender: Any) {
        gameViewController.exit()
        dismiss(animated: false, completion: nil)
    }
}
