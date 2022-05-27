//
//  PlayerHistoricViewController.swift
//  BodyMotion
//
//  Created by Rafael Forbeck on 22/05/21.
//

import UIKit

class PlayerHistoricViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var playerNameLabel: UILabel!
    @IBOutlet weak var filesTableView: UITableView!
    
    var player: Player!
    var filesString: [String]!
    var files = [HistoricFile]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        filesTableView.delegate = self
        filesTableView.dataSource = self

        playerNameLabel.text = player.name
        
        filesString = FileHelper.getAllFilesName(fileExtension: "csv")
        
        print("\(filesString.count) arquivos encontrados")
        for fileString in filesString {
            let fileParts = fileString.split(separator: "|")
            let name = fileParts[1].trimmingCharacters(in: .whitespaces)
            print("--\(name)--")
            print("--\(player.name)--")
            if name == player.name {
                let date = fileParts[0].trimmingCharacters(in: .whitespaces)
                let song = fileParts[2].trimmingCharacters(in: .whitespaces)
                let score = fileParts[3].trimmingCharacters(in: .whitespaces)
                
                let file = HistoricFile(fileName: fileString, date: date, name: name, song: song, score: score)
                files.append(file)
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return files.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let file = files[indexPath.row]
        let cell = filesTableView.dequeueReusableCell(withIdentifier: "file") as! HistoricFileTableViewCell
        cell.setup(file)
        cell.playerHistoricViewController = self
        return cell
    }
    
    func share(_ fileName: String) {
        FileHelper.share(viewController: self, fileName: fileName, fileExtension: "csv")
    }
    
    @IBAction func backPressed(_ sender: Any) {
        navigationController?.popViewController(animated: false)
    }
}
