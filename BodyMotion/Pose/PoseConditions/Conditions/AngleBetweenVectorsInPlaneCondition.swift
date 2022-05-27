//
//  AngleBetweenVectorsInPlaneCondition.swift
//  BodyDetection
//
//  Created by Rafael Forbeck on 19/03/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import Foundation

// Ângulo entre dois vetores rebatido em um dos 3 planos. Cada vetor é formado por dois joints
class AngleBetweenVectorsInPlaneCondition: Condition {
    
    private var firstA: Joint
    private var secondA: Joint
    private var firstB: Joint
    private var secondB: Joint
    
    private var plane: Axis
    
    private var inferiorLimit: Float = 0
    private var upperLimit: Float = 0
    
    private var condition: RelativeCondition
    
    init(firstA: JointEnum, secondA: JointEnum, firstB: JointEnum, secondB: JointEnum, plane: Axis, condition: RelativeCondition, limit: Float) {
        
        self.firstA = Joints.instance.getJoint(jointEnum: firstA)
        self.secondA = Joints.instance.getJoint(jointEnum: secondA)
        self.firstB = Joints.instance.getJoint(jointEnum: firstB)
        self.secondB = Joints.instance.getJoint(jointEnum: secondB)
        
        self.plane = plane
        
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
    
    init(firstA: JointEnum, secondA: JointEnum, firstB: JointEnum, secondB: JointEnum, plane: Axis, condition: RelativeCondition, inferiorLimit: Float, upperLimit: Float) {
        
        self.firstA = Joints.instance.getJoint(jointEnum: firstA)
        self.secondA = Joints.instance.getJoint(jointEnum: secondA)
        self.firstB = Joints.instance.getJoint(jointEnum: firstB)
        self.secondB = Joints.instance.getJoint(jointEnum: secondB)
        
        self.plane = plane
        
        self.condition = condition
        self.inferiorLimit = inferiorLimit
        self.upperLimit = upperLimit
    }
    
    func checkCondition() -> Bool {
        
        // Vetor que sai do firstB para o firsA
        let diference = vectorInPlane(vector: firstA.coord - firstB.coord, plane: plane)
        
        // Criando um ponto C transportanto o vetor B para o primeiro ponto do vetor A
        let cPoint = vectorInPlane(vector: secondB.coord, plane: plane) + diference
        
        // Obtendo o ângulo entre o vetor A e o vetor (firstA -> cPoint)
        let angle = Math.angleBetweenThreePoints(p1: vectorInPlane(vector: secondA.coord, plane: plane), p2: vectorInPlane(vector: firstA.coord, plane: plane), p3: cPoint)
        
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
    
    private func vectorInPlane(vector: SIMD3<Float>, plane: Axis) -> SIMD3<Float> {
        
        switch plane {
        case .x:
            return SIMD3(x: 0, y: vector.y, z: vector.z)
        case .y:
            return SIMD3(x: vector.x, y: 0, z: vector.z)
        case .z:
            return SIMD3(x: vector.x, y: vector.y, z: 0)
        }
    }
}

