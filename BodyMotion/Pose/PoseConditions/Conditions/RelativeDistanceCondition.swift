//
//  RelativeDistanceCondition.swift
//  BodyDetection
//
//  Created by Rafael Forbeck on 16/03/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import Foundation

// Distância direta entre dois pontos considerando um porcentagem de outra
// distância. Por exemplo, distância entre os dois pés (passo) proporcional a
// altura da pessoa
class RelativeDistanceCondition: Condition {
    
    private var firstJoint: Joint
    private var secondJoint: Joint
    private var firstReferenceJoint: Joint
    private var secondReferenceJoint: Joint
    private var condition: RelativeCondition
    private var inferiorLimit: Float = 0
    private var upperLimit: Float = 0
    
    init(firstJoint: JointEnum, secondJoint: JointEnum, firstReferenceJoint: JointEnum, secondReferenceJoint: JointEnum, condition: RelativeCondition, percentLimit: Float) {
        
        self.firstJoint = Joints.instance.getJoint(jointEnum: firstJoint)
        self.secondJoint = Joints.instance.getJoint(jointEnum: secondJoint)
        self.firstReferenceJoint = Joints.instance.getJoint(jointEnum: firstReferenceJoint)
        self.secondReferenceJoint = Joints.instance.getJoint(jointEnum: secondReferenceJoint)
        
        self.condition = condition
        
        switch condition {
        case .greater:
            self.inferiorLimit = percentLimit
        case .less:
            self.upperLimit = percentLimit
        default:
            fatalError("Condição inválida")
        }
    }
    
    init(firstJoint: JointEnum, secondJoint: JointEnum, firstReferenceJoint: JointEnum, secondReferenceJoint: JointEnum, condition: RelativeCondition, inferiorPercentLimit: Float, upperPercentLimit: Float) {
        
        self.firstJoint = Joints.instance.getJoint(jointEnum: firstJoint)
        self.secondJoint = Joints.instance.getJoint(jointEnum: secondJoint)
        self.firstReferenceJoint = Joints.instance.getJoint(jointEnum: firstReferenceJoint)
        self.secondReferenceJoint = Joints.instance.getJoint(jointEnum: secondReferenceJoint)
        
        self.condition = condition
        self.inferiorLimit = inferiorPercentLimit
        self.upperLimit = upperPercentLimit
    }
    
    func checkCondition() -> Bool {
        
        let referenceDistance = Math.size(vector: secondReferenceJoint.coord - firstReferenceJoint.coord)
        let distance = Math.size(vector: secondJoint.coord - firstJoint.coord)
        let relativeDistance = distance / referenceDistance
//        print(relativeDistance)
        switch condition {
        case .greater:
            return relativeDistance >= inferiorLimit
        case .less:
            return relativeDistance <= upperLimit
        case .between:
            return relativeDistance >= inferiorLimit &&  relativeDistance <= upperLimit
        }
    }
}
