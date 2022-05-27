//
//  Math.swift
//  BodyDetection
//
//  Created by Rafael Forbeck on 18/02/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import ARKit

class Math {
    
    static func size(vector: SIMD3<Float>) -> Float {
        return sqrt(vector.x * vector.x + vector.y * vector.y + vector.z * vector.z)
    }
    
    static func sqrSize(vector: SIMD3<Float>) -> Float {
        return vector.x * vector.x + vector.y * vector.y + vector.z * vector.z
    }
    
    static func scalar(v1: SIMD3<Float>, v2: SIMD3<Float>) -> Float {
        return v1.x * v2.x + v1.y * v2.y + v1.z * v2.z
    }
    
    static func subtract(v1: SIMD3<Float>, v2: SIMD3<Float>) -> SIMD3<Float> {
        return SIMD3(x: v1.x - v2.x, y: v1.y - v2.y, z: v1.z - v2.z)
    }
    
    static func angleBetweenThreePoints(p1: SIMD3<Float>, p2: SIMD3<Float>, p3: SIMD3<Float>) -> Float {
        
        let v1 = p1 - p2
        let v2 = p3 - p2
        
        let scalar = Math.scalar(v1: v1, v2: v2)
        let sqrtD1 = Math.sqrSize(vector: v1)
        let sqrtD2 = Math.sqrSize(vector: v2)
        let scalarDelta = sqrt(abs(sqrtD1 * sqrtD2))
        
        let cosTheta = scalar / scalarDelta
        let theta = acos(cosTheta)
        
        return theta * 180 / Float.pi
    }
}
