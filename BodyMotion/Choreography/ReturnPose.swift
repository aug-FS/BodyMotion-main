//
//  ReturnPose.swift
//  BodyDetection
//
//  Created by Rafael Forbeck on 09/05/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import Foundation

class ReturnPose: UpdatedObject {
    
    let pose: Pose
    private (set) var returned = false
    
    private var lastStepPerformance: StepPerformance?
    
    init(pose: Pose) {
        self.pose = pose
    }
    
    func Update(deltaTime: TimeInterval) {
        
        if returned {
            return
        }
        
        if pose.checkPose() {
            returned = true
            lastStepPerformance?.setDone()
        }
    }
    
    func returnedFalse(_ lastStepPerformance: StepPerformance) {
        returned = false
        self.lastStepPerformance = lastStepPerformance
    }
}
