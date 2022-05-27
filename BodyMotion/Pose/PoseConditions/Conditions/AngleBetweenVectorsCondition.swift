//
//  AngleBetweenVectorsCondition.swift
//  BodyDetection
//
//  Created by Rafael Forbeck on 28/02/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import Foundation

// Ângulo entre dois vetores. Cada vetor é formado por dois joints
class AngleBetweenVectorsCondition: Condition {
    
    private var firstA: Joint
    private var secondA: Joint
    private var firstB: Joint
    private var secondB: Joint
    
    private var inferiorLimit: Float = 0
    private var upperLimit: Float = 0
    
    private var condition: RelativeCondition
    
    init(firstA: JointEnum, secondA: JointEnum, firstB: JointEnum, secondB: JointEnum, condition: RelativeCondition, limit: Float) {
        
        self.firstA = Joints.instance.getJoint(jointEnum: firstA)
        self.secondA = Joints.instance.getJoint(jointEnum: secondA)
        self.firstB = Joints.instance.getJoint(jointEnum: firstB)
        self.secondB = Joints.instance.getJoint(jointEnum: secondB)
        
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
    
    init(firstA: JointEnum, secondA: JointEnum, firstB: JointEnum, secondB: JointEnum, condition: RelativeCondition, inferiorLimit: Float, upperLimit: Float) {
        
        self.firstA = Joints.instance.getJoint(jointEnum: firstA)
        self.secondA = Joints.instance.getJoint(jointEnum: secondA)
        self.firstB = Joints.instance.getJoint(jointEnum: firstB)
        self.secondB = Joints.instance.getJoint(jointEnum: secondB)
        
        self.condition = condition
        self.inferiorLimit = inferiorLimit
        self.upperLimit = upperLimit
    }
    
    func checkCondition() -> Bool {
        
        // Vetor que sai do firstB para o firstA
        let diference = firstA.coord - firstB.coord
        
        // Criando um ponto C transportanto o vetor B para o primeiro ponto do vetor A
        let cPoint = secondB.coord + diference
        
        // Obtendo o ângulo entre o vetor A e o vetor (firstA -> cPoint)
        let angle = Math.angleBetweenThreePoints(p1: secondA.coord, p2: firstA.coord, p3: cPoint)
        
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

