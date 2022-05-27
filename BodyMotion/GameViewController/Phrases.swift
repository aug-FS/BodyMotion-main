//
//  Phrases.swift
//  BodyMotion
//
//  Created by Rafael Forbeck on 23/05/21.
//

import UIKit

class Phrases: UpdatedObject {
    
    private var label: UILabel
    private var sequence = 0
    private var sequenceTime = TimeInterval()
    
    private var queue : Int = 0
    private var showing = false
    
    private var start = false
    private var startTime = TimeInterval(5)
    
    init(label: UILabel) {
        self.label = label
        label.alpha = 0
    }
    
    func Update(deltaTime: TimeInterval) {
        if !start {
            startTime -= deltaTime
            if startTime <= 0 {
                start = true
            }
        }
        if sequenceTime > 0 {
            sequenceTime -= deltaTime
            if sequenceTime <= 0 {
                sequence = 0
            }
        }
    }
    
    func maxScore() {
        if !start {
            return
        }
        sequenceTime = 3
        sequence += 1
        if sequence > 3 {
            queuePhrase(level: 3)
        } else if sequence == 3 {
            queuePhrase(level: 2)
        } else if sequence == 2 {
            queuePhrase(level: 1)
        }
    }
    
    private func queuePhrase(level: Int) {
        if showing {
            if queue < level {
                queue = level
            }
        } else {
            showPhrase(level: level)
        }
    }
    
    private func showPhrase(level: Int) {
        showing = true
        label.text = PhrasesBank.getPhrase(level: level)
        label.textColor = PhrasesBank.getRandomColor()
        label.alpha = 1
        
        UIView.animate(withDuration: 2, animations: {
            self.label.alpha = 0.5
        }) { _ in
            self.label.alpha = 0
            self.showing = false
        }
    }
}
