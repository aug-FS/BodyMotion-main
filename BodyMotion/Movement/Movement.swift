//
//  Movement.swift
//  BodyDetection
//
//  Created by Rafael Forbeck on 25/11/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

class Movement: UpdatedObject {
    
    private var poses: [Pose]
    private var currentCiclesCount: Int = 0
    private var currentIndex: Int = -1
    private var startIndex: Int = -1
    private var isActive: Bool = false
    
    init(poses: [Pose]) {
        self.poses = poses
    }
    
    func start() {
        isActive = true
    }
    
    func getCiclesCount() -> Int {
        return currentCiclesCount
    }

    func Update(deltaTime: TimeInterval) {
        
        if !isActive {
            return
        }
        
        if startIndex == -1 { // Pode começar por qualquer pose que compoem o movimento
            for (index, pose) in poses.enumerated() {
                if pose.checkPose() {
                    startIndex = index
                    currentIndex = (index + 1) % poses.count
                    return
                }
            }
            return
        }
        
        if poses[currentIndex].checkPose() {
            if currentIndex == startIndex {
                currentCiclesCount += 1
            }
            currentIndex += 1
            if currentIndex >= poses.count {
                currentIndex = 0
            }
        }
    }
}
