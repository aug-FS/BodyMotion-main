//
//  CSVSaver.swift
//  BodyDetection
//
//  Created by Rafael Forbeck on 08/10/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class CSVPerformSaver {
    
    private var text : String = ""
    private var fileName: String!
    private var dateString: String
    
    init(therapistName: String, patientName: String, songName: String, score: Int, percents: [Float]) {
        
        let d = Date()
        let df = DateFormatter()
        df.dateFormat = "y-MM-dd HH:mm:ss"
        dateString = df.string(from: d)
        
        text += "Data: \(dateString)\n"
        text += "Nome do terapeuta: \(therapistName)\n"
        text += "Nome do paciente: \(patientName)\n"
        text += "Música: \(songName)\n"
        
        text += "Pontuação: \(score)\n"
        
        let limbs = Game.instance.getPlayer().limbs
        var index = 0
        if limbs[0] && percents.count > 0 {
            text += "Porcentagem braço direito: \(percents[index])\n"
            index += 1
        }
        if limbs[1] && percents.count > 1 {
            text += "Porcentagem braço esquerdo: \(percents[index])\n"
            index += 1
        }
        if limbs[2] && percents.count > 2 {
            text += "Porcentagem perna direita: \(percents[index])\n"
            index += 1
        }
        if limbs[3] && percents.count > 3 {
            text += "Porcentagem perna esquerda: \(percents[index])\n"
            index += 1
        }
        if limbs[4] && percents.count > 4 {
            text += "Porcentagem tronco: \(percents[index])\n"
            index += 1
        }
        if limbs[5] && percents.count > 5 {
            text += "Porcentagem cabeça: \(percents[index])\n"
            index += 1
        }
        
        text += "tempo;membro;movimento;qualidade;\n"
    }
    
    func update(time: TimeInterval, member: Member, movement: String, quality: Float) {

        text += String(format: "%.3f", time) + ";"
        text += member.rawValue + ";"
        text += movement + ";"
        text += String(format: "%.2f", quality) + ";"
        text += "\n"
    }
   
    func save(label: String) {
        fileName = dateString + " | " + label + ".csv"
        FileHelper.save(text: text, name: fileName)
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
}
