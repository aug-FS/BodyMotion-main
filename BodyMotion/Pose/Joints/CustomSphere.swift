//
//  CustomSphere.swift
//  BodyDetection
//
//  Created by Rafael Forbeck on 27/12/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation
import ARKit
import RealityKit

class CustomSphere: Entity, HasModel {
    
    var radius: Float
    
    required init(radius: Float) {
        self.radius = radius
        super.init()
        
        self.components[ModelComponent] = ModelComponent(
            mesh: .generateSphere(radius: radius),
            materials: [SimpleMaterial(
                            color: UIColor(hue: CGFloat.random(in: 0...1), saturation: 1, brightness: 1, alpha: 1),
                            isMetallic: false)
            ]
        )
    }
    
    required init() {
        fatalError("init() has not been implemented")
    }
    
    func changeColor() {
        self.components[ModelComponent] = ModelComponent(
            mesh: .generateSphere(radius: radius),
            materials: [SimpleMaterial(
                            color: UIColor.green,
                            isMetallic: false)
            ]
        )
    }
    
    func changeAlpha(alpha: CGFloat) {
        self.components[ModelComponent] = ModelComponent(
            mesh: .generateSphere(radius: radius),
            materials: [SimpleMaterial(
                            color: UIColor(hue: CGFloat.random(in: 0...1), saturation: 1, brightness: 1, alpha: alpha),
                            isMetallic: false)
            ]
        )
    }
}
