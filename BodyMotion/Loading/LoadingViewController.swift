//
//  LoadingViewController.swift
//  BodyMotion
//
//  Created by Rafael Forbeck on 21/05/21.
//

import UIKit

class LoadingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "Game") as! GameViewController
            self.navigationController?.pushViewController(vc, animated: false)
        }
        
    }
}
