//
//  Step.swift
//  BodyDetection
//
//  Created by Rafael Forbeck on 11/01/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import Foundation
class Step {
    
    private var poses: [Pose] // A primeira pose é a de melhor qualidade -> 100%
    private var moveName: String
    
    init(poses: [Pose], moveName: String) {
        self.poses = poses
        self.moveName = moveName
    }
    
    func getPoseQuality() -> Float {
        
        for (index, pose) in poses.enumerated() {
            if pose.checkPose() {
                
                // Se tiver 4 níveis de qualidade
                // 1 -> 100% = 1
                // 2 -> 75% = 0.75
                // 3 -> 50% = 0.5
                // 4 -> 25% = 0.25
                let countFLoat = Float(poses.count)
                return (countFLoat - Float(index)) / countFLoat
            }
        }
        
        return 0
    }
    
    public func getMoveName() -> String {
        return moveName
    }
}
