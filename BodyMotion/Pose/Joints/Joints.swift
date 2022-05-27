//
//  Joints.swift
//  BodyDetection
//
//  Created by Rafael Forbeck on 07/10/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import RealityKit
import ARKit
import Combine

class Joints {
    
    static var instance = Joints()
    
    private var activedJoints = [1, 2, 3, 4, 5, 7, 8, 9, 10, 18, 19, 20, 21, 22, 47, 51, 63, 64, 65, 66]
    private var enabledJoints: [Int]! //= [20, 21, 22, 64, 65, 66]
    private var jointVisible = true
    private var jointList: [Joint]!
    private var limbs = [true, true, true, true]
    private var setuped = false
    
    private init () {
        setupJoints()
    }
    
    private func setupJoints() {
        
        print(activedJoints)
        jointList = [Joint]()
        for (index, jointEnum) in JointEnum.allValues.enumerated() {
            let isActived = activedJoints.contains(index)
//            let alpha: CGFloat = enabledJoints.contains(index) ? 1.0 : 0.1
            let joint = Joint(isActived: isActived, isVisible: jointVisible, jointEnum: jointEnum, alpha: 1)
            jointList.append(joint)
        }
    }
    
    func disableJoints(limbs: [Bool]) {
        
        enabledJoints = [Int]()
        if limbs[3] {
            enabledJoints.append(2)
            enabledJoints.append(3)
            enabledJoints.append(5)
        }
        if limbs[2] {
            enabledJoints.append(7)
            enabledJoints.append(8)
            enabledJoints.append(10)
        }
        if limbs[1] {
            enabledJoints.append(20)
            enabledJoints.append(21)
            enabledJoints.append(22)
        }
        if limbs[0] {
            enabledJoints.append(64)
            enabledJoints.append(65)
            enabledJoints.append(66)
        }
        
        for index in 0..<JointEnum.allValues.count {
            let alpha: CGFloat = enabledJoints.contains(index) ? 1.0 : 0.1
            jointList[index].sphere.changeAlpha(alpha: alpha)
        }
    }
    
    func setup(characterAnchor: AnchorEntity) {
        
        for index in 0..<jointList.count     {
            let isActived = activedJoints.contains(index)
            let joint = getJoin(index: index)
            if self.jointVisible && isActived {
                characterAnchor.addChild(joint.sphere)
            }
        }
    }
    
    func updateJoint(index: Int, coord: SIMD3<Float>) {
        
        if jointList[index].isActive == false {
            return
        }
        
        jointList[index].update(coord: coord)
    }
    
    func getJoin(index: Int) -> Joint {
        return jointList[index]
    }
    
    func getJoint(jointEnum: JointEnum) -> Joint {
        for joint in jointList {
            if joint.jointEnum == jointEnum {
                return joint
            }
        }
        fatalError("Joint não encontrado")
    }
}
