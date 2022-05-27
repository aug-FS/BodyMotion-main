//
//  AxisDistanceCondition.swift
//  BodyDetection
//
//  Created by Rafael Forbeck on 09/12/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

// Distância entre dois pontos em um dos 3 eixos
class AxisDistanceCondition: Condition {
    
    private var firstJoint: Joint
    private var secondJoint: Joint
    private var axis: Axis
    private var condition: RelativeCondition
    private var inferiorLimit: Float = 0
    private var upperLimit: Float = 0
    
    init(firstJoint: JointEnum, secondJoint: JointEnum, condition: RelativeCondition, axis: Axis, limit: Float) {
        
        self.firstJoint = Joints.instance.getJoint(jointEnum: firstJoint)
        self.secondJoint = Joints.instance.getJoint(jointEnum: secondJoint)
        
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
    
    init(firstJoint: JointEnum, secondJoint: JointEnum, condition: RelativeCondition, axis: Axis, inferiorLimit: Float, upperLimit: Float) {
        
        self.firstJoint = Joints.instance.getJoint(jointEnum: firstJoint)
        self.secondJoint = Joints.instance.getJoint(jointEnum: secondJoint)
        
        self.condition = condition
        self.axis = axis
        
        self.inferiorLimit = inferiorLimit
        self.upperLimit = upperLimit
    }
    
    func checkCondition() -> Bool {
        
        switch axis {
        case .x:
            return checkValues(distance: abs(firstJoint.coord.x - secondJoint.coord.x))
        case .y:
            return checkValues(distance: abs(firstJoint.coord.y - secondJoint.coord.y))
        case .z:
            return checkValues(distance: abs(firstJoint.coord.z - secondJoint.coord.z))
        }
    }
    
    private func checkValues(distance: Float) -> Bool {
//        Teste.checkMax(value: distance)
//        print(distance)
        switch condition {
        case .greater:
            return distance > inferiorLimit
        case .less:
            return distance < upperLimit
        case .between:
            return distance >= inferiorLimit &&  distance <= upperLimit
        }
    }
}
