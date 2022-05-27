//
//  DistanceCondition.swift
//  BodyDetection
//
//  Created by Rafael Forbeck on 23/11/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

// Distância direta entre dois pontos
class DistanceCondition: Condition {
    
    private var firstJoint: Joint
    private var secondJoint: Joint
    private var condition: RelativeCondition
    private var inferiorLimit: Float = 0
    private var upperLimit: Float = 0
    
    init(firstJoint: JointEnum, secondJoint: JointEnum, condition: RelativeCondition, limit: Float) {
        
        self.firstJoint = Joints.instance.getJoint(jointEnum: firstJoint)
        self.secondJoint = Joints.instance.getJoint(jointEnum: secondJoint)
        
        self.condition = condition
        
        switch condition {
        case .greater:
            self.inferiorLimit = limit
        case .less:
            self.upperLimit = limit
        default:
            fatalError("Condição inválida")
        }
    }
    
    init(firstJoint: JointEnum, secondJoint: JointEnum, condition: RelativeCondition, inferiorLimit: Float, upperLimit: Float) {
        
        self.firstJoint = Joints.instance.getJoint(jointEnum: firstJoint)
        self.secondJoint = Joints.instance.getJoint(jointEnum: secondJoint)
        
        self.condition = condition
        self.inferiorLimit = inferiorLimit
        self.upperLimit = upperLimit
    }
    
    func checkCondition() -> Bool {
        
        let distance = Math.size(vector: secondJoint.coord - firstJoint.coord)
        
        switch condition {
        case .greater:
            return distance >= inferiorLimit
        case .less:
            return distance <= upperLimit
        case .between:
            return distance >= inferiorLimit &&  distance <= upperLimit
        }
    }
}
