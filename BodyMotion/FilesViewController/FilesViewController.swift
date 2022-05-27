//
//  FilesViewController.swift
//  BodyDetection
//
//  Created by Rafael Forbeck on 08/05/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import UIKit

class FilesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var files: [String]!

    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.delegate = self
        table.dataSource = self

        files = FileHelper.getAllFilesName(fileExtension: "csv").sorted{ $0 < $1 }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return files.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! FileTableViewCell
        
        cell.fileName.text = files[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let fileName = files[indexPath.row]
        FileHelper.share(viewController: self, fileName: fileName, fileExtension: "csv")
    }

}
