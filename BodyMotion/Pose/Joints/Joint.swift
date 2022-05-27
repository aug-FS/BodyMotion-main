//
//  Joint.swift
//  BodyDetection
//
//  Created by Rafael Forbeck on 07/10/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import CoreGraphics

class Joint {
    
    let sphere: CustomSphere!
    private (set) var isActive = false
    private var isVisible = false
    private (set) var coord = SIMD3<Float>(repeating: 0.0)
    private (set) var jointEnum: JointEnum
    
    init(isActived: Bool, isVisible: Bool, jointEnum: JointEnum, alpha: CGFloat) {
        self.isActive = isActived
        self.isVisible = isVisible
        self.jointEnum = jointEnum
        sphere = CustomSphere(radius: 0.05)
    }
    
    func update(coord: SIMD3<Float>) {
        self.coord = coord
        if isVisible {
            sphere.position = coord
        }
    }
}
