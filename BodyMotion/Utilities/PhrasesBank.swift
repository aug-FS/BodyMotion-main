//
//  PhrasesBank.swift
//  BodyMotion
//
//  Created by Rafael Forbeck on 23/05/21.
//

import UIKit
import CoreGraphics

class PhrasesBank {
    
    private static var phrasesLevel1 = ["Bom!", "Legal!", "Certo!", "Isso aí!"]
    private static var phrasesLevel2 = ["Muito bom!", "Ótimo!", "Grande!", "Continue assim!", "Uauu", "Vamos lá!"]
    private static var phrasesLevel3 = ["Excelente!", "Incrível!", "Perfeito!", "Magnífico!", "Sublime!", "Parabéns!"]
    
    private static var phraseColors  = [#colorLiteral(red: 0.3294117647, green: 1, blue: 0.9568627451, alpha: 1), #colorLiteral(red: 1, green: 0.4666666667, blue: 0.2196078431, alpha: 1), #colorLiteral(red: 1, green: 0.2196078431, blue: 0.2196078431, alpha: 1), #colorLiteral(red: 1, green: 0.9607843137, blue: 0.2, alpha: 1), #colorLiteral(red: 0.737254902, green: 1, blue: 0.1450980392, alpha: 1), #colorLiteral(red: 0.3647058824, green: 1, blue: 0.3843137255, alpha: 1), #colorLiteral(red: 0.1490196078, green: 1, blue: 0.5137254902, alpha: 1), #colorLiteral(red: 0.1294117647, green: 0.9921568627, blue: 1, alpha: 1), #colorLiteral(red: 0.2588235294, green: 0.6431372549, blue: 1, alpha: 1), #colorLiteral(red: 0.6549019608, green: 0.4117647059, blue: 1, alpha: 1), #colorLiteral(red: 1, green: 0.4117647059, blue: 0.9490196078, alpha: 1), #colorLiteral(red: 1, green: 0.4, blue: 0.6901960784, alpha: 1)]
    
    static func getPhrase(level: Int) -> String {
        
        switch level {
        case 1:
            return phrasesLevel1[Int.random(in: 0..<phrasesLevel1.count)]
        case 2:
            return phrasesLevel2[Int.random(in: 0..<phrasesLevel2.count)]
        case 3:
            return phrasesLevel3[Int.random(in: 0..<phrasesLevel3.count)]
        default:
            return ""
        }
    }
    
    static func getPhrases(stars: Int) -> String {
        switch stars {
        case 0, 1:
            return phrasesLevel1[Int.random(in: 0..<phrasesLevel1.count)]
        case 2, 3:
            return phrasesLevel2[Int.random(in: 0..<phrasesLevel2.count)]
        case 4, 5:
            return phrasesLevel3[Int.random(in: 0..<phrasesLevel3.count)]
        default:
            return ""
        }
    }
    
    static func getRandomColor() -> UIColor {
        return phraseColors[Int.random(in: 0..<phraseColors.count)]
    }
}
