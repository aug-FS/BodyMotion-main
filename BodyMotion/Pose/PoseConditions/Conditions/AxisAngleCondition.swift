//
//  AxisAngleCondition.swift
//  BodyDetection
//
//  Created by Rafael Forbeck on 23/11/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

// Ângulo entre o vetor formado por doi pontos e um dos três eixos (com origem no primeiro ponto)
class AxisAngleCondition: Condition {
    
    private var firstJoint: Joint
    private var secondJoint: Joint
    
    private var inferiorLimit: Float = 0
    private var upperLimit: Float = 0
    
    private var condition: RelativeCondition
    private var axis: Axis
    private var axisPositive: Bool
    
    init(firstJoint: JointEnum, secondJoint: JointEnum, axis: Axis, axisPositive: Bool, condition: RelativeCondition, limit: Float) {
        
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
        self.axis = axis
        self.axisPositive = axisPositive
    }
    
    init(firstJoint: JointEnum, secondJoint: JointEnum, axis: Axis, axisPositive: Bool, condition: RelativeCondition, inferiorLimit: Float, upperLimit: Float) {
        
        self.firstJoint = Joints.instance.getJoint(jointEnum: firstJoint)
        self.secondJoint = Joints.instance.getJoint(jointEnum: secondJoint)
        
        self.condition = condition
        self.inferiorLimit = inferiorLimit
        self.upperLimit = upperLimit
        
        self.axis = axis
        self.axisPositive = axisPositive
    }
    
    func checkCondition() -> Bool {
        
        let angle = angleBetweenTwoPointsAndAxis(p1: firstJoint.coord, p2: secondJoint.coord)
        
        switch condition {
        case .greater:
            return angle >= inferiorLimit
        case .less:
            return angle <= upperLimit
        case .between:
            return angle >= inferiorLimit &&  angle <= upperLimit
        }
    }
    
    private func angleBetweenTwoPointsAndAxis(p1: SIMD3<Float>, p2: SIMD3<Float>) -> Float {
        
        let v1 = p2 - p1
        
        var v2: SIMD3<Float>
        
        switch axis {
        case .x:
            if axisPositive {
                v2 = SIMD3(x: Float(1), y: Float(0), z: Float(0))
            } else {
                v2 = SIMD3(x: Float(-1), y: Float(0), z: Float(0))
            }
        case .y:
            if axisPositive {
                v2 = SIMD3(x: Float(0), y: Float(1), z: Float(0))
            } else {
                v2 = SIMD3(x: Float(0), y: Float(-1), z: Float(0))
            }
        case .z:
            if axisPositive {
                v2 = SIMD3(x: Float(0), y: Float(0), z: Float(1))
            } else {
                v2 = SIMD3(x: Float(0), y: Float(0), z: Float(-1))
            }
        }
        
        let scalar = Math.scalar(v1: v1, v2: v2)
        let sqrtD1 = Math.sqrSize(vector: v1)
        let sqrtD2 = Math.sqrSize(vector: v2)
        let scalarDelta = sqrt(abs(sqrtD1 * sqrtD2))
        
        let cosTheta = scalar / scalarDelta
        let theta = acos(cosTheta)
        
        let angle = theta * 180 / Float.pi
//        print(angle)
        return angle
    }
}
