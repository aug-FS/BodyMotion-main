//
//  AngleCondition.swift
//  BodyDetection
//
//  Created by Rafael Forbeck on 23/11/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation 

// Ângulo formado entre três pontos
class AngleCondition: Condition {
    
    private var centerJoint: Joint
    private var firstJoint: Joint
    private var secondJoint: Joint
    
    private var inferiorLimit: Float = 0
    private var upperLimit: Float = 0
    
    private var condition: RelativeCondition
    
    init(centerJoint: JointEnum, firstJoint: JointEnum, secondJoint: JointEnum, condition: RelativeCondition, limit: Float) {
        
        self.centerJoint = Joints.instance.getJoint(jointEnum: centerJoint)
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
    
    init(centerJoint: JointEnum, firstJoint: JointEnum, secondJoint: JointEnum, condition: RelativeCondition, inferiorLimit: Float, upperLimit: Float) {
        
        self.centerJoint = Joints.instance.getJoint(jointEnum: centerJoint)
        self.firstJoint = Joints.instance.getJoint(jointEnum: firstJoint)
        self.secondJoint = Joints.instance.getJoint(jointEnum: secondJoint)
        
        self.condition = condition
        self.inferiorLimit = inferiorLimit
        self.upperLimit = upperLimit
    }
    
    func checkCondition() -> Bool {
        
        let angle = Math.angleBetweenThreePoints(p1: firstJoint.coord, p2: centerJoint.coord, p3: secondJoint.coord)
        
//        print(angle)
        
        switch condition {
        case .greater:
            return angle >= inferiorLimit
        case .less:
            return angle <= upperLimit
        case .between:
            return angle >= inferiorLimit &&  angle <= upperLimit
        }
    }
}
