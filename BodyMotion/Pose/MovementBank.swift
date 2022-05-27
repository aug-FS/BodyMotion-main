//
//  MovementBank.swift
//  BodyDetection
//
//  Created by Rafael Forbeck on 11/01/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import Foundation

class MovementBank {
    
    static var instance = MovementBank()
    
    
    var polichinelo: Movement
    var pegadaCruzada: Movement
    var flexaoOmbro: Movement
    
    private init() {
        polichinelo = Movement(poses: [PoseBank.normal, PoseBank.polichineloCima])
        pegadaCruzada = Movement(poses: [PoseBank.pegaCruzadoDireita, PoseBank.pegaCruzadoEsquerda])
        flexaoOmbro = Movement(poses: [PoseBank.flexaoOmbroEsquerdo_45, PoseBank.flexaoOmbroDireito_45])
    }
    
}
