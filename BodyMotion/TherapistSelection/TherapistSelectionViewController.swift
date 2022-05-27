//
//  TherapistSelectionViewController.swift
//  BodyMotion
//
//  Created by Rafael Forbeck on 02/09/21.
//

import UIKit

class TherapistSelectionViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var noRegistryLabel: UILabel!
    private var therapists: [Therapist]!

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        therapists = TherapistBank.instance.therapists
        
        noRegistryLabel.isHidden = !therapists.isEmpty
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return therapists.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let therapist = therapists[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "therapistSelectionCell", for: indexPath) as! TherapistSelectionTableViewCell
        
        cell.setup(therapist)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Selecionou")
        let therapist = therapists[indexPath.row]
        selectTherapist(therapist)
    }
    
    func selectTherapist(_ therapist: Therapist) {
        Game.instance.setTherapist(therapist)
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "Patients")
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    @IBAction func backPressed(_ sender: Any) {
        navigationController?.popViewController(animated: false)
    }
}
