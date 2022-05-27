//
//  Pose.swift
//  BodyDetection
//
//  Created by Rafael Forbeck on 23/11/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

class Pose {
    
    var conditions: [Condition]
    
    init(conditions: [Condition]) {
        self.conditions = conditions
    }
    
    func checkPose() -> Bool {
        for condition in conditions {
            if condition.checkCondition() == false {
                return false
            }
        }
        return true
    }
}
