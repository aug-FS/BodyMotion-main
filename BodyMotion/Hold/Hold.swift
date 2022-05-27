//
//  Hold.swift
//  BodyDetection
//
//  Created by Rafael Forbeck on 25/11/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

class Hold: UpdatedObject, Moment {
    
    private var pose: Pose
    private var timeTarget: TimeInterval
    private var currentTime: TimeInterval = 0
    private var isActive: Bool = false
    var done: Bool = false
    
    init(pose: Pose, timeTarget: TimeInterval) {
        self.pose = pose
        self.timeTarget = timeTarget
    }
    
    func start() {
        isActive = true
    }
    
    func reset() {
        currentTime = 0
    }
    
    func Update(deltaTime: TimeInterval) {
        
        if !isActive || done {
            return
        }
        
        if pose.checkPose() {
            currentTime += deltaTime
            if currentTime >= timeTarget {
                done = true
                isActive = false
            }
        }
    }
}
