//
//  MainMenuViewController.swift
//  BodyMotion
//
//  Created by Rafael Forbeck on 21/05/21.
//

import UIKit

class MainMenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        clearAll()
    }
    
    private func clearAll() {
        FileHelper.clearAllFile()
        let domain = Bundle.main.bundleIdentifier!
        UserDefaults.standard.removePersistentDomain(forName: domain)
        UserDefaults.standard.synchronize()
    }
    
    @IBAction func patientPressed(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "TherapistSelection")
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    @IBAction func fisioPressed(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "Therapists") as! TherapistsViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    @IBAction func update(_ sender: Any) {
        PlayerBank.instance.update()
    }
    @IBAction func testAreaPressed(_ sender: UIButton) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "TestArea") as! TestAreaViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    @IBAction func testChoregraphyPressed(_ sender: UIButton) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "TestChoreography") as! TestChoreographyViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
}
