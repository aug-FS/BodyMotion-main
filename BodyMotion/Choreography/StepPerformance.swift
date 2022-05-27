//
//  StepPerformance.swift
//  BodyDetection
//
//  Created by Rafael Forbeck on 11/01/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import Foundation
import UIKit

class StepPerformance {
    
    private var stepInTrack: StepInTrack
    private var stepStatus: StepStatus = .waiting
    private var delay: TimeInterval = 0
    private var maxDelay: TimeInterval = 3.5
    private var quality: Float = 0
    private var stepBegins = false // Se o step depende de um retorno para uma posição, precisamos verificar se o step foi iniciado. Isso é para garantir que o movimento possa chegar até 100%
    
    // Só pra debug
    private var view: UIView?
    
    init(stepInTrack: StepInTrack, maxDelay: TimeInterval?, view: UIView?) {
        self.stepInTrack = stepInTrack
        self.view = view
        view?.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0)
        if maxDelay != nil {
            self.maxDelay = maxDelay!
        }
    }
    
    func Update(choreographyTime: TimeInterval, deltaTime: TimeInterval, realTimeScore: inout Int, phrases: Phrases) {
        
        switch stepStatus {
        case .waiting:
            waiting(choreographyTime: choreographyTime, deltaTime: deltaTime, realTimeScore: &realTimeScore, phrases: phrases)
        case .active:
            active(choreographyTime: choreographyTime, deltaTime: deltaTime, realTimeScore: &realTimeScore, phrases: phrases)
        case .partial:
            active(choreographyTime: choreographyTime, deltaTime: deltaTime, realTimeScore: &realTimeScore, phrases: phrases)
        case .done:
            break
        case .expired:
            break
        }
    }
    
    private func waiting(choreographyTime: TimeInterval, deltaTime: TimeInterval, realTimeScore: inout Int, phrases: Phrases) {
        if stepInTrack.getTime() <= choreographyTime {
            
            if let view = view {
                view.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 0.8039507329)
                let label = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 30))
                label.adjustsFontSizeToFitWidth = true
                label.text = String(format: "%.3f", stepInTrack.getTime())
                view.addSubview(label)
            }
            
            stepStatus = .active
            active(choreographyTime: choreographyTime, deltaTime: deltaTime, realTimeScore: &realTimeScore, phrases: phrases)
        }
    }
    
    private func active(choreographyTime: TimeInterval, deltaTime: TimeInterval, realTimeScore: inout Int, phrases: Phrases) {
        
        delay += deltaTime
        if delay > maxDelay {
            stepStatus = .expired
            if quality == 0 {
                view?.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 0.8)
            }
            return
        }
        
        let newQuality = stepInTrack.getPoseQuality()
        
        if newQuality == quality { // Sem novidades
            return
        }
        
        if let returnPose = stepInTrack.returnPose { // Se depende de uma pose de retorno para continuar
            
            if stepBegins == false && returnPose.returned == false { // Se ainda não iniciou e a posição de retorno não foi cumprida
                return
            }
            
            if newQuality > 0 {
                stepBegins = true // Agora que começou, pode fazer o movimento mesmo que returnPose.returned seja false
                returnPose.returnedFalse(self)
            }
        }
        
        if newQuality > quality {
            let newScore = Int((newQuality - quality) * 100)
            realTimeScore += newScore
            quality = newQuality
            
            if let view = view {
                view.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 0.8)
                view.alpha = CGFloat(quality)
            }
        }
        
        if quality == 1 {
            phrases.maxScore()
            stepStatus = .done
        }
    }
    
    public func setDone() {
        stepStatus = .done
    }
    
    public func getStatus() -> StepStatus {
        return stepStatus
    }
    
    public func getQuality() -> Float {
        return quality
    }
    
    public func getTime() -> TimeInterval {
        return stepInTrack.getTime()
    }
    
    public func getMoveName() -> String {
        return stepInTrack.getMoveName()
    }
}
