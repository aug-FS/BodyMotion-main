//
//  CoordCondition.swift
//  BodyDetection
//
//  Created by Rafael Forbeck on 02/12/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

// Coordenada em um eixo
class CoordCondition: Condition {
    
    private var firstJoint: Joint
    
    private var condition: RelativeCondition
    private var axis: Axis
    
    private var inferiorLimit: Float = 0
    private var upperLimit: Float = 0
    
    init(firstJoint: JointEnum, condition: RelativeCondition, axis: Axis, limit: Float) {
        
        self.firstJoint = Joints.instance.getJoint(jointEnum: firstJoint)
        
        self.condition = condition
        self.axis = axis
        
        switch condition {
        case .greater:
            self.inferiorLimit = limit
        case .less:
            self.upperLimit = limit
        default:
            fatalError("Condição inválida")
        }
    }
    
    init(firstJoint: JointEnum, condition: RelativeCondition, axis: Axis, inferiorLimit: Float, upperLimit: Float) {
        
        self.firstJoint = Joints.instance.getJoint(jointEnum: firstJoint)
        
        self.condition = condition
        self.axis = axis
        
        self.inferiorLimit = inferiorLimit
        self.upperLimit = upperLimit
    }
    
    private func compareValues(value: Float) -> Bool {
        switch condition {
        case .less:
            return value < upperLimit
        case .greater:
            return value > inferiorLimit
        default:
            return value <= upperLimit && value >= inferiorLimit
        }
    }
    
    func checkCondition() -> Bool {
//        print(firstJoint.coord.x)
        switch axis {
        case .x:
            return compareValues(value: firstJoint.coord.x)
        case .y:
            return compareValues(value: firstJoint.coord.y)
        case .z:
            return compareValues(value: firstJoint.coord.z)
        }
    }
}
