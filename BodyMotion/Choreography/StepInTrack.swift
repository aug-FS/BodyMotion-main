//
//  StepInTrack.swift
//  BodyDetection
//
//  Created by Rafael Forbeck on 02/02/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import Foundation

class StepInTrack {
    
    var step: Step
    var time: TimeInterval
    var returnPose: ReturnPose?
    
    init(step: Step, time: TimeInterval, returnPose: ReturnPose? = nil) {
        self.step = step
        self.time = time
        self.returnPose = returnPose
    }
    
    func getPoseQuality() -> Float {
        return step.getPoseQuality()
    }
    
    func getStep() -> Step {
        return step
    }
    
    func getTime() -> TimeInterval {
        return time
    }
    
    func getMoveName() -> String {
        return step.getMoveName()
    }
}
