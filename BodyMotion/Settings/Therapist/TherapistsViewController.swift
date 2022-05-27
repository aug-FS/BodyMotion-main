//
//  TherapistsViewController.swift
//  BodyMotion
//
//  Created by Rafael Forbeck on 25/08/21.
//

import UIKit

class TherapistsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, ScreenUpdateDelegate {
     
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TherapistBank.instance.therapists.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "therapistSettingsCell", for: indexPath) as! TherapistTableViewCell
        
        let therapist = TherapistBank.instance.therapists[indexPath.row]
        cell.setup(therapist, therapistsVC: self)
        
        return cell
    }
    
    @IBAction func newPressed(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "NewPlayer") as! NewUserViewController
        
        vc.screenUpdateDelegate = self
        vc.mode = .createTherapist
        
        self.present(vc, animated: true)
    }

    func update() {
        tableView.reloadData()
        
    }
    
    func editTherapist(therapist: Therapist) {
        
        Game.instance.setTherapist(therapist)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "Settings") as! TherapistViewController
        
        vc.screenUpdateDelegate = self
        
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    @IBAction func backPressed(_ sender: Any) {
        navigationController?.popViewController(animated: false)
    }
}
