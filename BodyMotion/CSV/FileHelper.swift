//
//  FileHelper.swift
//  Test-file
//
//  Created by Rafael Forbeck on 07/10/20.
//

import UIKit

class FileHelper {
    
    static func save(text: String, name: String) {
        
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {

            let fileURL = dir.appendingPathComponent(name)

            do {
                try text.write(to: fileURL, atomically: false, encoding: .utf32)
            }
            catch {
                
            }
        }
    }
    
    static func load(name: String, fileExtension: String) -> String {
        
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {

            let fileURL = dir.appendingPathComponent(name + "." + fileExtension)

            do {
                let text = try String(contentsOf: fileURL, encoding: .utf8)
                return text
            }
            catch {
                
            }
        }
        fatalError("Não foi possível ler o arquivo")
    }
    
    static func getAllFilesName(fileExtension: String) -> [String] {
        // Get the document directory url
        let documentsUrl =  FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!

        do {
            // Get the directory contents urls (including subfolders urls)
            let directoryContents = try FileManager.default.contentsOfDirectory(at: documentsUrl, includingPropertiesForKeys: nil)

            // if you want to filter the directory contents you can do like this:
            let files = directoryContents.filter{ $0.pathExtension == fileExtension }
            let filesName = files.map{ $0.deletingPathExtension().lastPathComponent }
            
            var list = [String]()
            for file in filesName {
                list.append(file)
            }
            return list

        } catch {
            print(error)
        }
        fatalError("Não foi possível ler os arquivos")
    }
    
    static func share(viewController: UIViewController, fileName: String, fileExtension: String) {
        
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {

            let fileURL = dir.appendingPathComponent(fileName + "." + fileExtension)

            // Create the Array which includes the files you want to share
            var filesToShare = [Any]()

            // Add the path of the file to the Array
            filesToShare.append(fileURL)

            // Make the activityViewContoller which shows the share-view
            let activityViewController = UIActivityViewController(activityItems: filesToShare, applicationActivities: nil)

            // Show the share-view
            viewController.present(activityViewController, animated: true, completion: nil)
        }
    }
    
    static func clearAllFile() {
        let fileManager = FileManager.default
        let myDocuments = fileManager.urls(for: .documentDirectory, in: .userDomainMask).first!
        do {
            try fileManager.removeItem(at: myDocuments)
        } catch {
            return
        }
    }
}
