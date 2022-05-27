//
//  PosCondition.swift
//  BodyDetection
//
//  Created by Rafael Forbeck on 23/11/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

// Posição entre dois pontos em um dos três eixos (se está para cima ou para baixo, para a direita ou para a esquerda, para frente ou para trás)

class PosCondition: Condition {
    
    private var firstJoint: Joint
    private var secondJoint: Joint
    
    private var condition: RelativeCondition
    private var axis: Axis
    
    private var inferiorLimit: Float = 0
    
    
    init(firstJoint: JointEnum, secondJoint: JointEnum, condition: RelativeCondition, axis: Axis) {
        
        self.firstJoint = Joints.instance.getJoint(jointEnum: firstJoint)
        self.secondJoint = Joints.instance.getJoint(jointEnum: secondJoint)
        
        self.condition = condition
        self.axis = axis
    }
    
    init(firstJoint: JointEnum, secondJoint: JointEnum, condition: RelativeCondition, axis: Axis, limit: Float) {
        
        self.firstJoint = Joints.instance.getJoint(jointEnum: firstJoint)
        self.secondJoint = Joints.instance.getJoint(jointEnum: secondJoint)
        
        self.condition = condition
        self.axis = axis
        
        self.inferiorLimit = limit
    }
    
    private func compareValues(firstValue: Float, secondValue: Float) -> Bool {
        switch condition {
        case .less:
            return firstValue < secondValue - inferiorLimit
        case .greater:
            return firstValue > secondValue + inferiorLimit
        default:
            fatalError("Condição errada")
        }
    }
    
    func checkCondition() -> Bool {
        switch axis {
        case .x:
            return compareValues(firstValue: firstJoint.coord.x, secondValue: secondJoint.coord.x)
        case .y:
            return compareValues(firstValue: firstJoint.coord.y, secondValue: secondJoint.coord.y)
        case .z:
            return compareValues(firstValue: firstJoint.coord.z, secondValue: secondJoint.coord.z)
        }
    }
}
