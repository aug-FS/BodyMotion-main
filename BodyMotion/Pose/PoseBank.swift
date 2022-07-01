//
//  PoseBank.swift
//  BodyDetection
//
//  Created by Rafael Forbeck on 23/11/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

class PoseBank {
    
    static var instance = PoseBank()
    
    // Os dois pés no chão
    static var pesNoChao = Pose(conditions: [AxisDistanceCondition(firstJoint: .left_foot_joint, secondJoint: .right_foot_joint, condition: .less, axis: .y, limit: 0.0025)])
    
    static var pesJuntos = Pose(conditions: [DistanceCondition(firstJoint: .right_foot_joint, secondJoint: .left_foot_joint, condition: .less, limit: 0.4)])
    
    // Eleva pé esquerdo
    static var elevaPeEsquerdo100 = Pose(conditions: [
        AxisDistanceCondition(firstJoint: .right_foot_joint, secondJoint: .left_foot_joint, condition: .greater, axis: .y, limit: 0.05),
        PosCondition(firstJoint: .right_foot_joint, secondJoint: .left_foot_joint, condition: .greater, axis: .y)
    ])
    static var elevaPeEsquerdo75 = Pose(conditions: [
        AxisDistanceCondition(firstJoint: .right_foot_joint, secondJoint: .left_foot_joint, condition: .greater, axis: .y, limit: 0.0375),
        PosCondition(firstJoint: .right_foot_joint, secondJoint: .left_foot_joint, condition: .greater, axis: .y)
    ])
    static var elevaPeEsquerdo50 = Pose(conditions: [
        AxisDistanceCondition(firstJoint: .right_foot_joint, secondJoint: .left_foot_joint, condition: .greater, axis: .y, limit: 0.025),
        PosCondition(firstJoint: .right_foot_joint, secondJoint: .left_foot_joint, condition: .greater, axis: .y)
    ])
    static var elevaPeEsquerdo25 = Pose(conditions: [
        AxisDistanceCondition(firstJoint: .right_foot_joint, secondJoint: .left_foot_joint, condition: .greater, axis: .y, limit: 0.0125),
        PosCondition(firstJoint: .right_foot_joint, secondJoint: .left_foot_joint, condition: .greater, axis: .y)
    ])
    
    // Eleva pé direito
    static var elevaPeDireito100 = Pose(conditions: [
        AxisDistanceCondition(firstJoint: .right_foot_joint, secondJoint: .left_foot_joint, condition: .greater, axis: .y, limit: 0.05),
        PosCondition(firstJoint: .right_foot_joint, secondJoint: .left_foot_joint, condition: .less, axis: .y)
    ])
    static var elevaPeDireito75 = Pose(conditions: [
        AxisDistanceCondition(firstJoint: .right_foot_joint, secondJoint: .left_foot_joint, condition: .greater, axis: .y, limit: 0.0375),
        PosCondition(firstJoint: .right_foot_joint, secondJoint: .left_foot_joint, condition: .less, axis: .y)
    ])
    static var elevaPeDireito50 = Pose(conditions: [
        AxisDistanceCondition(firstJoint: .right_foot_joint, secondJoint: .left_foot_joint, condition: .greater, axis: .y, limit: 0.025),
        PosCondition(firstJoint: .right_foot_joint, secondJoint: .left_foot_joint, condition: .less, axis: .y)
    ])
    static var elevaPeDireito25 = Pose(conditions: [
        AxisDistanceCondition(firstJoint: .right_foot_joint, secondJoint: .left_foot_joint, condition: .greater, axis: .y, limit: 0.0125),
        PosCondition(firstJoint: .right_foot_joint, secondJoint: .left_foot_joint, condition: .less, axis: .y)
    ])
    
    // Flexão de ombro
    
    // Direito
    static var flexaoOmbroDireito120 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .right_arm_joint, secondB: .right_forearm_joint, condition: .greater, limit: 120)])
    static var flexaoOmbroDireito90 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .right_arm_joint, secondB: .right_forearm_joint, condition: .greater, limit: 90)])
    static var flexaoOmbroDireito80 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .right_arm_joint, secondB: .right_forearm_joint, condition: .greater, limit: 80)])
    static var flexaoOmbroDireito70 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .right_arm_joint, secondB: .right_forearm_joint, condition: .greater, limit: 70)])
    static var flexaoOmbroDireito60 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .right_arm_joint, secondB: .right_forearm_joint, condition: .greater, limit: 60)])
    static var flexaoOmbroDireito50 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .right_arm_joint, secondB: .right_forearm_joint, condition: .greater, limit: 50)])
    static var flexaoOmbroDireito30 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .right_arm_joint, secondB: .right_forearm_joint, condition: .greater, limit: 30)])
    
    // Esquerdo
    
    static var flexaoOmbroEsquerdo120 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .left_arm_joint, secondB: .left_forearm_joint, condition: .greater, limit: 120)])
    static var flexaoOmbroEsquerdo90 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .left_arm_joint, secondB: .left_forearm_joint, condition: .greater, limit: 90)])
    static var flexaoOmbroEsquerdo80 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .left_arm_joint, secondB: .left_forearm_joint, condition: .greater, limit: 80)])
    static var flexaoOmbroEsquerdo70 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .left_arm_joint, secondB: .left_forearm_joint, condition: .greater, limit: 70)])
    static var flexaoOmbroEsquerdo60 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .left_arm_joint, secondB: .left_forearm_joint, condition: .greater, limit: 60)])
    static var flexaoOmbroEsquerdo50 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .left_arm_joint, secondB: .left_forearm_joint, condition: .greater, limit: 50)])
    static var flexaoOmbroEsquerdo30 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .left_arm_joint, secondB: .left_forearm_joint, condition: .greater, limit: 30)])
    
    // Abdução de ombro
    
    // Direito
    static var abducaoOmbroDireito120 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .right_arm_joint, secondB: .right_forearm_joint, condition: .greater, limit: 120)
    ])
    static var abducaoOmbroDireito90 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .right_arm_joint, secondB: .right_forearm_joint, condition: .greater, limit: 90)
    ])
    static var abducaoOmbroDireito60 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .right_arm_joint, secondB: .right_forearm_joint, condition: .greater, limit: 60)
    ])
    static var abducaoOmbroDireito50 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .right_arm_joint, secondB: .right_forearm_joint, condition: .greater, limit: 50)
    ])
    static var abducaoOmbroDireito40 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .right_arm_joint, secondB: .right_forearm_joint, condition: .greater, limit: 40)
    ])
    static var abducaoOmbroDireito30 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .right_arm_joint, secondB: .right_forearm_joint, condition: .greater, limit: 30)
    ])
    
    // Esquerdo
    static var abducaoOmbroEsquerdo120 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .left_arm_joint, secondB: .left_forearm_joint, condition: .greater, limit: 120)
    ])
    static var abducaoOmbroEsquerdo90 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .left_arm_joint, secondB: .left_forearm_joint, condition: .greater, limit: 90)
    ])
    static var abducaoOmbroEsquerdo60 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .left_arm_joint, secondB: .left_forearm_joint, condition: .greater, limit: 60)
    ])
    static var abducaoOmbroEsquerdo50 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .left_arm_joint, secondB: .left_forearm_joint, condition: .greater, limit: 50)
    ])
    static var abducaoOmbroEsquerdo40 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .left_arm_joint, secondB: .left_forearm_joint, condition: .greater, limit: 40)
    ])
    static var abducaoOmbroEsquerdo30 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .left_arm_joint, secondB: .left_forearm_joint, condition: .greater, limit: 30)
    ])
    
    // Abducao de ombro com adução horizontal de ombro e flexão de cotovelo
    // Direito
    
    static var abdAduflexDireito100 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .right_arm_joint, secondB: .right_forearm_joint, condition: .greater, limit: 80),
        AngleCondition(centerJoint: .right_arm_joint, firstJoint: .left_arm_joint, secondJoint: .right_forearm_joint, condition: .less, limit: 150),
        AngleCondition(centerJoint: .right_forearm_joint, firstJoint: .right_arm_joint, secondJoint: .right_hand_joint, condition: .less, limit: 120)
        
    ])
    static var abdDireito80 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .right_arm_joint, secondB: .right_forearm_joint, condition: .greater, limit: 80),
    ])
    static var aduDireito150 = Pose(conditions: [
        AngleCondition(centerJoint: .right_arm_joint, firstJoint: .left_arm_joint, secondJoint: .right_forearm_joint, condition: .less, limit: 150),
    ])
    static var flexDireito120 = Pose(conditions: [
        AngleCondition(centerJoint: .right_forearm_joint, firstJoint: .right_arm_joint, secondJoint: .right_hand_joint, condition: .less, limit: 120)
    ])
    
    
    static var abdAduflexDireito75 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .right_arm_joint, secondB: .right_forearm_joint, condition: .greater, limit: 70),
        AngleCondition(centerJoint: .right_arm_joint, firstJoint: .left_arm_joint, secondJoint: .right_forearm_joint, condition: .less, limit: 160),
        AngleCondition(centerJoint: .right_forearm_joint, firstJoint: .right_arm_joint, secondJoint: .right_hand_joint, condition: .less, limit: 130)
    ])
    static var abdDireito70 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .right_arm_joint, secondB: .right_forearm_joint, condition: .greater, limit: 70),
    ])
    static var aduDireito160 = Pose(conditions: [
        AngleCondition(centerJoint: .right_arm_joint, firstJoint: .left_arm_joint, secondJoint: .right_forearm_joint, condition: .less, limit: 160),
    ])
    static var flexDireito130 = Pose(conditions: [
        AngleCondition(centerJoint: .right_forearm_joint, firstJoint: .right_arm_joint, secondJoint: .right_hand_joint, condition: .less, limit: 130)
    ])
    
    
    static var abdAduflexDireito50 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .right_arm_joint, secondB: .right_forearm_joint, condition: .greater, limit: 60),
        AngleCondition(centerJoint: .right_arm_joint, firstJoint: .left_arm_joint, secondJoint: .right_forearm_joint, condition: .less, limit: 170),
        AngleCondition(centerJoint: .right_forearm_joint, firstJoint: .right_arm_joint, secondJoint: .right_hand_joint, condition: .less, limit: 140)
    ])
    static var abdDireito60 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .right_arm_joint, secondB: .right_forearm_joint, condition: .greater, limit: 60),
    ])
    static var aduDireito170 = Pose(conditions: [
        AngleCondition(centerJoint: .right_arm_joint, firstJoint: .left_arm_joint, secondJoint: .right_forearm_joint, condition: .less, limit: 170),
    ])
    static var flexDireito140 = Pose(conditions: [
        AngleCondition(centerJoint: .right_forearm_joint, firstJoint: .right_arm_joint, secondJoint: .right_hand_joint, condition: .less, limit: 140)
    ])
    
    
    static var abdAduflexDireito25 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .right_arm_joint, secondB: .right_forearm_joint, condition: .greater, limit: 50),
        AngleCondition(centerJoint: .right_arm_joint, firstJoint: .left_arm_joint, secondJoint: .right_forearm_joint, condition: .less, limit: 180),
        AngleCondition(centerJoint: .right_forearm_joint, firstJoint: .right_arm_joint, secondJoint: .right_hand_joint, condition: .less, limit: 150)
    ])
    static var abdDireito50 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .right_arm_joint, secondB: .right_forearm_joint, condition: .greater, limit: 50),
    ])
    static var aduDireito180 = Pose(conditions: [
        AngleCondition(centerJoint: .right_arm_joint, firstJoint: .left_arm_joint, secondJoint: .right_forearm_joint, condition: .less, limit: 180),
    ])
    static var flexDireito150 = Pose(conditions: [
        AngleCondition(centerJoint: .right_forearm_joint, firstJoint: .right_arm_joint, secondJoint: .right_hand_joint, condition: .less, limit: 150)
    ])
    
    
    // Esquerdo
    static var abdAduflexEsquerdo100 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .left_arm_joint, secondB: .left_forearm_joint, condition: .greater, limit: 80),
        AngleCondition(centerJoint: .left_arm_joint, firstJoint: .right_arm_joint, secondJoint: .left_forearm_joint, condition: .less, limit: 150),
        AngleCondition(centerJoint: .left_forearm_joint, firstJoint: .left_arm_joint, secondJoint: .left_hand_joint, condition: .less, limit: 120)
    ])
    
    static var abdEsquerdo80 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .left_arm_joint, secondB: .left_forearm_joint, condition: .greater, limit: 80)
    ])
    static var aduEsquerdo150 = Pose(conditions: [
        AngleCondition(centerJoint: .left_arm_joint, firstJoint: .right_arm_joint, secondJoint: .left_forearm_joint, condition: .less, limit: 150)
        
    ])
    static var flexEsquerdo120 = Pose(conditions: [
        AngleCondition(centerJoint: .left_forearm_joint, firstJoint: .left_arm_joint, secondJoint: .left_hand_joint, condition: .less, limit: 120)
    ])
    
    static var abdAduflexEsquerdo75 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .left_arm_joint, secondB: .left_forearm_joint, condition: .greater, limit: 70),
        AngleCondition(centerJoint: .left_arm_joint, firstJoint: .right_arm_joint, secondJoint: .left_forearm_joint, condition: .less, limit: 160),
        AngleCondition(centerJoint: .left_forearm_joint, firstJoint: .left_arm_joint, secondJoint: .left_hand_joint, condition: .less, limit: 130)
    ])
    
    static var abdEsquerdo70 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .left_arm_joint, secondB: .left_forearm_joint, condition: .greater, limit: 70)
    ])
    static var aduEsquerdo160 = Pose(conditions: [
        AngleCondition(centerJoint: .left_arm_joint, firstJoint: .right_arm_joint, secondJoint: .left_forearm_joint, condition: .less, limit: 160)
        
    ])
    static var flexEsquerdo130 = Pose(conditions: [
        AngleCondition(centerJoint: .left_forearm_joint, firstJoint: .left_arm_joint, secondJoint: .left_hand_joint, condition: .less, limit: 130)
    ])
    
    static var abdAduflexEsquerdo50 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .left_arm_joint, secondB: .left_forearm_joint, condition: .greater, limit: 60),
        AngleCondition(centerJoint: .left_arm_joint, firstJoint: .right_arm_joint, secondJoint: .left_forearm_joint, condition: .less, limit: 170),
        AngleCondition(centerJoint: .left_forearm_joint, firstJoint: .left_arm_joint, secondJoint: .left_hand_joint, condition: .less, limit: 140)
    ])
    
    static var abdEsquerdo60 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .left_arm_joint, secondB: .left_forearm_joint, condition: .greater, limit: 60)
    ])
    static var aduEsquerdo170 = Pose(conditions: [
        AngleCondition(centerJoint: .left_arm_joint, firstJoint: .right_arm_joint, secondJoint: .left_forearm_joint, condition: .less, limit: 170)
        
    ])
    static var flexEsquerdo140 = Pose(conditions: [
        AngleCondition(centerJoint: .left_forearm_joint, firstJoint: .left_arm_joint, secondJoint: .left_hand_joint, condition: .less, limit: 140)
    ])
    
    static var abdAduflexEsquerdo25 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .left_arm_joint, secondB: .left_forearm_joint, condition: .greater, limit: 50),
        AngleCondition(centerJoint: .left_arm_joint, firstJoint: .right_arm_joint, secondJoint: .left_forearm_joint, condition: .less, limit: 180),
        AngleCondition(centerJoint: .left_forearm_joint, firstJoint: .left_arm_joint, secondJoint: .left_hand_joint, condition: .less, limit: 150)
    ])
    
    static var abdEsquerdo50 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .left_arm_joint, secondB: .left_forearm_joint, condition: .greater, limit: 50)
    ])
    static var aduEsquerdo180 = Pose(conditions: [
        AngleCondition(centerJoint: .left_arm_joint, firstJoint: .right_arm_joint, secondJoint: .left_forearm_joint, condition: .less, limit: 180)
        
    ])
    static var flexEsquerdo150 = Pose(conditions: [
        AngleCondition(centerJoint: .left_forearm_joint, firstJoint: .left_arm_joint, secondJoint: .left_hand_joint, condition: .less, limit: 150)
    ])
    
    // Passo pé direito para frente 25% da altura da pessoa
    static var passoPeDireito20 = Pose(conditions: [
        RelativeDistanceCondition(firstJoint: .right_foot_joint, secondJoint: .left_foot_joint, firstReferenceJoint: .head_joint, secondReferenceJoint: .spine_1_joint, condition: .greater, percentLimit: 0.40),
        PosCondition(firstJoint: .right_foot_joint, secondJoint: .left_foot_joint, condition: .greater, axis: .z)
    ])
    static var passoPeDireito15 = Pose(conditions: [
        RelativeDistanceCondition(firstJoint: .right_foot_joint, secondJoint: .left_foot_joint, firstReferenceJoint: .head_joint, secondReferenceJoint: .spine_1_joint, condition: .greater, percentLimit: 0.35),
        PosCondition(firstJoint: .right_foot_joint, secondJoint: .left_foot_joint, condition: .greater, axis: .z)
    ])
    static var passoPeDireito10 = Pose(conditions: [
        RelativeDistanceCondition(firstJoint: .right_foot_joint, secondJoint: .left_foot_joint, firstReferenceJoint: .head_joint, secondReferenceJoint: .spine_1_joint, condition: .greater, percentLimit: 0.30),
        PosCondition(firstJoint: .right_foot_joint, secondJoint: .left_foot_joint, condition: .greater, axis: .z)
    ])
    static var passoPeDireito05 = Pose(conditions: [
        RelativeDistanceCondition(firstJoint: .right_foot_joint, secondJoint: .left_foot_joint, firstReferenceJoint: .head_joint, secondReferenceJoint: .spine_1_joint, condition: .greater, percentLimit: 0.25),
        PosCondition(firstJoint: .right_foot_joint, secondJoint: .left_foot_joint, condition: .greater, axis: .z)
    ])
    // Passo pé esquerdo para frente 25% da altura da pessoa
    static var passoPeEsquerdo20 = Pose(conditions: [
        RelativeDistanceCondition(firstJoint: .left_foot_joint, secondJoint: .right_foot_joint, firstReferenceJoint: .head_joint, secondReferenceJoint: .spine_1_joint, condition: .greater, percentLimit: 0.40),
        PosCondition(firstJoint: .left_foot_joint, secondJoint: .right_foot_joint, condition: .greater, axis: .z)
    ])
    static var passoPeEsquerdo15 = Pose(conditions: [
        RelativeDistanceCondition(firstJoint: .left_foot_joint, secondJoint: .right_foot_joint, firstReferenceJoint: .head_joint, secondReferenceJoint: .spine_1_joint, condition: .greater, percentLimit: 0.35),
        PosCondition(firstJoint: .left_foot_joint, secondJoint: .right_foot_joint, condition: .greater, axis: .z)
    ])
    static var passoPeEsquerdo10 = Pose(conditions: [
        RelativeDistanceCondition(firstJoint: .left_foot_joint, secondJoint: .right_foot_joint, firstReferenceJoint: .head_joint, secondReferenceJoint: .spine_1_joint, condition: .greater, percentLimit: 0.30),
        PosCondition(firstJoint: .left_foot_joint, secondJoint: .right_foot_joint, condition: .greater, axis: .z)
    ])
    static var passoPeEsquerdo05 = Pose(conditions: [
        RelativeDistanceCondition(firstJoint: .left_foot_joint, secondJoint: .right_foot_joint, firstReferenceJoint: .head_joint, secondReferenceJoint: .spine_1_joint, condition: .greater, percentLimit: 0.25),
        PosCondition(firstJoint: .left_foot_joint, secondJoint: .right_foot_joint, condition: .greater, axis: .z)
    ])
    
    // Passo sentado pé direito para frente 20% da distancia entre a base da coluna e o topo da cabeça
    static var passoSentadoPeDireito20 = Pose(conditions: [
        RelativeDistanceCondition(firstJoint: .right_foot_joint, secondJoint: .left_foot_joint, firstReferenceJoint: .head_joint, secondReferenceJoint: .spine_1_joint, condition: .greater, percentLimit: 0.20),
        PosCondition(firstJoint: .right_foot_joint, secondJoint: .left_foot_joint, condition: .greater, axis: .z)
    ])
    static var passoSentadoPeDireito15 = Pose(conditions: [
        RelativeDistanceCondition(firstJoint: .right_foot_joint, secondJoint: .left_foot_joint, firstReferenceJoint: .head_joint, secondReferenceJoint: .spine_1_joint, condition: .greater, percentLimit: 0.15),
        PosCondition(firstJoint: .right_foot_joint, secondJoint: .left_foot_joint, condition: .greater, axis: .z)
    ])
    static var passoSentadoPeDireito10 = Pose(conditions: [
        RelativeDistanceCondition(firstJoint: .right_foot_joint, secondJoint: .left_foot_joint, firstReferenceJoint: .head_joint, secondReferenceJoint: .spine_1_joint, condition: .greater, percentLimit: 0.10),
        PosCondition(firstJoint: .right_foot_joint, secondJoint: .left_foot_joint, condition: .greater, axis: .z)
    ])
    static var passoSentadoPeDireito05 = Pose(conditions: [
        RelativeDistanceCondition(firstJoint: .right_foot_joint, secondJoint: .left_foot_joint, firstReferenceJoint: .head_joint, secondReferenceJoint: .spine_1_joint, condition: .greater, percentLimit: 0.05),
        PosCondition(firstJoint: .right_foot_joint, secondJoint: .left_foot_joint, condition: .greater, axis: .z)
    ])
    // Passo pé esquerdo para frente 25% da altura da pessoa
    static var passoSentadoPeEsquerdo20 = Pose(conditions: [
        RelativeDistanceCondition(firstJoint: .left_foot_joint, secondJoint: .right_foot_joint, firstReferenceJoint: .head_joint, secondReferenceJoint: .spine_1_joint, condition: .greater, percentLimit: 0.20),
        PosCondition(firstJoint: .left_foot_joint, secondJoint: .right_foot_joint, condition: .greater, axis: .z)
    ])
    static var passoSentadoPeEsquerdo15 = Pose(conditions: [
        RelativeDistanceCondition(firstJoint: .left_foot_joint, secondJoint: .right_foot_joint, firstReferenceJoint: .head_joint, secondReferenceJoint: .spine_1_joint, condition: .greater, percentLimit: 0.15),
        PosCondition(firstJoint: .left_foot_joint, secondJoint: .right_foot_joint, condition: .greater, axis: .z)
    ])
    static var passoSentadoPeEsquerdo10 = Pose(conditions: [
        RelativeDistanceCondition(firstJoint: .left_foot_joint, secondJoint: .right_foot_joint, firstReferenceJoint: .head_joint, secondReferenceJoint: .spine_1_joint, condition: .greater, percentLimit: 0.10),
        PosCondition(firstJoint: .left_foot_joint, secondJoint: .right_foot_joint, condition: .greater, axis: .z)
    ])
    static var passoSentadoPeEsquerdo05 = Pose(conditions: [
        RelativeDistanceCondition(firstJoint: .left_foot_joint, secondJoint: .right_foot_joint, firstReferenceJoint: .head_joint, secondReferenceJoint: .spine_1_joint, condition: .greater, percentLimit: 0.05),
        PosCondition(firstJoint: .left_foot_joint, secondJoint: .right_foot_joint, condition: .greater, axis: .z)
    ])
    
    // ADM de ombro
    // Direito
    static var admOmbroDireito80 = Pose(conditions: [
        AngleCondition(centerJoint: .right_forearm_joint, firstJoint: .right_arm_joint, secondJoint: .right_hand_joint, condition: .less, inferiorLimit: 80, upperLimit: 100),
        AngleBetweenVectorsInPlaneCondition(firstA: .left_shoulder_1_joint, secondA: .right_shoulder_1_joint, firstB: .right_forearm_joint, secondB: .right_hand_joint, plane: .y, condition: .less, limit: 90)])
    
    static var admOmbroDireito70 = Pose(conditions: [
        AngleCondition(centerJoint: .right_forearm_joint, firstJoint: .right_arm_joint, secondJoint: .right_hand_joint, condition: .less, inferiorLimit: 70, upperLimit: 110),
        AngleBetweenVectorsInPlaneCondition(firstA: .left_shoulder_1_joint, secondA: .right_shoulder_1_joint, firstB: .right_forearm_joint, secondB: .right_hand_joint, plane: .y, condition: .less, limit: 100)])
    

    static var admOmbroDireito60 = Pose(conditions: [
        AngleCondition(centerJoint: .right_forearm_joint, firstJoint: .right_arm_joint, secondJoint: .right_hand_joint, condition: .less, inferiorLimit: 60, upperLimit: 120),
        AngleBetweenVectorsInPlaneCondition(firstA: .left_shoulder_1_joint, secondA: .right_shoulder_1_joint, firstB: .right_forearm_joint, secondB: .right_hand_joint, plane: .y, condition: .less, limit: 110)])
    

    static var admOmbroDireito50 = Pose(conditions: [
        AngleCondition(centerJoint: .right_forearm_joint, firstJoint: .right_arm_joint, secondJoint: .right_hand_joint, condition: .less, inferiorLimit: 50, upperLimit: 130),
        AngleBetweenVectorsInPlaneCondition(firstA: .left_shoulder_1_joint, secondA: .right_shoulder_1_joint, firstB: .right_forearm_joint, secondB: .right_hand_joint, plane: .y, condition: .less, limit: 120)])
    

    
    
    // Esquerdo
    static var admOmbroEsquerdo80 = Pose(conditions: [
        AngleCondition(centerJoint: .left_forearm_joint, firstJoint: .left_arm_joint, secondJoint: .left_hand_joint, condition: .less, inferiorLimit: 80, upperLimit: 100),
        AngleBetweenVectorsInPlaneCondition(firstA: .right_shoulder_1_joint, secondA: .left_shoulder_1_joint, firstB: .left_forearm_joint, secondB: .left_hand_joint, plane: .y, condition: .less, limit: 90)])

    static var admOmbroEsquerdo70 = Pose(conditions: [
        AngleCondition(centerJoint: .left_forearm_joint, firstJoint: .left_arm_joint, secondJoint: .left_hand_joint, condition: .less, inferiorLimit: 70, upperLimit: 110),
        AngleBetweenVectorsInPlaneCondition(firstA: .right_shoulder_1_joint, secondA: .left_shoulder_1_joint, firstB: .left_forearm_joint, secondB: .left_hand_joint, plane: .y, condition: .less, limit: 100)])
 
    static var admOmbroEsquerdo60 = Pose(conditions: [
        AngleCondition(centerJoint: .left_forearm_joint, firstJoint: .left_arm_joint, secondJoint: .left_hand_joint, condition: .less, inferiorLimit: 60, upperLimit: 120),
        AngleBetweenVectorsInPlaneCondition(firstA: .right_shoulder_1_joint, secondA: .left_shoulder_1_joint, firstB: .left_forearm_joint, secondB: .left_hand_joint, plane: .y, condition: .less, limit: 110)])
 
    static var admOmbroEsquerdo50 = Pose(conditions: [
        AngleCondition(centerJoint: .left_forearm_joint, firstJoint: .left_arm_joint, secondJoint: .left_hand_joint, condition: .less, inferiorLimit: 50, upperLimit: 130),
        AngleBetweenVectorsInPlaneCondition(firstA: .right_shoulder_1_joint, secondA: .left_shoulder_1_joint, firstB: .left_forearm_joint, secondB: .left_hand_joint, plane: .y, condition: .less, limit: 120)])
 
    
    // ADM de ombro invertido
    // Direito
    static var admOmbroInvertidoDireito80 = Pose(conditions: [
        AngleCondition(centerJoint: .right_forearm_joint, firstJoint: .right_arm_joint, secondJoint: .right_hand_joint, condition: .less, inferiorLimit: 80, upperLimit: 100),
        AngleBetweenVectorsInPlaneCondition(firstA: .right_shoulder_1_joint, secondA: .left_shoulder_1_joint, firstB: .right_forearm_joint, secondB: .right_hand_joint, plane: .y, condition: .less, limit: 90)])
    
    static var admOmbroInvertidoDireito70 = Pose(conditions: [
        AngleCondition(centerJoint: .right_forearm_joint, firstJoint: .right_arm_joint, secondJoint: .right_hand_joint, condition: .less, inferiorLimit: 70, upperLimit: 110),
        AngleBetweenVectorsInPlaneCondition(firstA: .right_shoulder_1_joint, secondA: .left_shoulder_1_joint, firstB: .right_forearm_joint, secondB: .right_hand_joint, plane: .y, condition: .less, limit: 100)])
   
    static var admOmbroInvertidoDireito60 = Pose(conditions: [
        AngleCondition(centerJoint: .right_forearm_joint, firstJoint: .right_arm_joint, secondJoint: .right_hand_joint, condition: .less, inferiorLimit: 60, upperLimit: 120),
        AngleBetweenVectorsInPlaneCondition(firstA: .right_shoulder_1_joint, secondA: .left_shoulder_1_joint, firstB: .right_forearm_joint, secondB: .right_hand_joint, plane: .y, condition: .less, limit: 110)])
    
    static var admOmbroInvertidoDireito50 = Pose(conditions: [
        AngleCondition(centerJoint: .right_forearm_joint, firstJoint: .right_arm_joint, secondJoint: .right_hand_joint, condition: .less, inferiorLimit: 50, upperLimit: 130),
        AngleBetweenVectorsInPlaneCondition(firstA: .right_shoulder_1_joint, secondA: .left_shoulder_1_joint, firstB: .right_forearm_joint, secondB: .right_hand_joint, plane: .y, condition: .less, limit: 120)])
   
    
    // Esquerdo
    static var admOmbroInvertidoEsquerdo80 = Pose(conditions: [
        AngleCondition(centerJoint: .left_forearm_joint, firstJoint: .left_arm_joint, secondJoint: .left_hand_joint, condition: .less, inferiorLimit: 80, upperLimit: 100),
        AngleBetweenVectorsInPlaneCondition(firstA: .left_shoulder_1_joint, secondA: .right_shoulder_1_joint, firstB: .left_forearm_joint, secondB: .left_hand_joint, plane: .y, condition: .less, limit: 90)])
  
    static var admOmbroInvertidoEsquerdo70 = Pose(conditions: [
        AngleCondition(centerJoint: .left_forearm_joint, firstJoint: .left_arm_joint, secondJoint: .left_hand_joint, condition: .less, inferiorLimit: 70, upperLimit: 110),
        AngleBetweenVectorsInPlaneCondition(firstA: .left_shoulder_1_joint, secondA: .right_shoulder_1_joint, firstB: .left_forearm_joint, secondB: .left_hand_joint, plane: .y, condition: .less, limit: 100)])
   
    static var admOmbroInvertidoEsquerdo60 = Pose(conditions: [
        AngleCondition(centerJoint: .left_forearm_joint, firstJoint: .left_arm_joint, secondJoint: .left_hand_joint, condition: .less, inferiorLimit: 60, upperLimit: 120),
        AngleBetweenVectorsInPlaneCondition(firstA: .left_shoulder_1_joint, secondA: .right_shoulder_1_joint, firstB: .left_forearm_joint, secondB: .left_hand_joint, plane: .y, condition: .less, limit: 110)])
    
    static var admOmbroInvertidoEsquerdo50 = Pose(conditions: [
        AngleCondition(centerJoint: .left_forearm_joint, firstJoint: .left_arm_joint, secondJoint: .left_hand_joint, condition: .less, inferiorLimit: 50, upperLimit: 130),
        AngleBetweenVectorsInPlaneCondition(firstA: .left_shoulder_1_joint, secondA: .right_shoulder_1_joint, firstB: .left_forearm_joint, secondB: .left_hand_joint, plane: .y, condition: .less, limit: 120)])
    
    
    // Flexão de ombro e cotovelo
    // Direito
    static var flexaoOmbroECotoveloDireito100 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .right_arm_joint, secondB: .right_forearm_joint, condition: .greater, limit: 120),
        AngleCondition(centerJoint: .right_forearm_joint, firstJoint: .right_arm_joint, secondJoint: .right_hand_joint, condition: .less, inferiorLimit: 70, upperLimit: 110)])
    static var flexaoOmbroDireito120_1 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .right_arm_joint, secondB: .right_forearm_joint, condition: .greater, limit: 120)])
    static var flexaoCotoveloDireito70_1 = Pose(conditions: [
        AngleCondition(centerJoint: .right_forearm_joint, firstJoint: .right_arm_joint, secondJoint: .right_hand_joint, condition: .less, inferiorLimit: 70, upperLimit: 110)])
    
    static var flexaoOmbroECotoveloDireito75 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .right_arm_joint, secondB: .right_forearm_joint, condition: .greater, limit: 90),
        AngleCondition(centerJoint: .right_forearm_joint, firstJoint: .right_arm_joint, secondJoint: .right_hand_joint, condition: .less, inferiorLimit: 60, upperLimit: 120)])
    static var flexaoOmbroDireito90_1 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .right_arm_joint, secondB: .right_forearm_joint, condition: .greater, limit: 90)])
    static var flexaoCotoveloDireito60_1 = Pose(conditions: [
        AngleCondition(centerJoint: .right_forearm_joint, firstJoint: .right_arm_joint, secondJoint: .right_hand_joint, condition: .less, inferiorLimit: 60, upperLimit: 120)])
    
    static var flexaoOmbroECotoveloDireito50 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .right_arm_joint, secondB: .right_forearm_joint, condition: .greater, limit: 60),
        AngleCondition(centerJoint: .right_forearm_joint, firstJoint: .right_arm_joint, secondJoint: .right_hand_joint, condition: .less, inferiorLimit: 50, upperLimit: 130)])
    static var flexaoOmbroDireito60_1 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .right_arm_joint, secondB: .right_forearm_joint, condition: .greater, limit: 60)])
    static var flexaoCotoveloDireito50_1 = Pose(conditions: [
        AngleCondition(centerJoint: .right_forearm_joint, firstJoint: .right_arm_joint, secondJoint: .right_hand_joint, condition: .less, inferiorLimit: 50, upperLimit: 130)])
    
    static var flexaoOmbroECotoveloDireito25 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .right_arm_joint, secondB: .right_forearm_joint, condition: .greater, limit: 30),
        AngleCondition(centerJoint: .right_forearm_joint, firstJoint: .right_arm_joint, secondJoint: .right_hand_joint, condition: .less, inferiorLimit: 40, upperLimit: 140)])
    static var flexaoOmbroDireito30_1 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .right_arm_joint, secondB: .right_forearm_joint, condition: .greater, limit: 30)])
    static var flexaoCotoveloDireito40_1 = Pose(conditions: [
        AngleCondition(centerJoint: .right_forearm_joint, firstJoint: .right_arm_joint, secondJoint: .right_hand_joint, condition: .less, inferiorLimit: 40, upperLimit: 140)])
    
    // Esquerdo
    static var flexaoOmbroECotoveloEsquerdo100 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .left_arm_joint, secondB: .left_forearm_joint, condition: .greater, limit: 120),
        AngleCondition(centerJoint: .left_forearm_joint, firstJoint: .left_arm_joint, secondJoint: .left_hand_joint, condition: .less, inferiorLimit: 70, upperLimit: 110)])
    static var flexaoOmbroEsquerdo120_1 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .left_arm_joint, secondB: .left_forearm_joint, condition: .greater, limit: 120) ])
    static var flexaoCotoveloEsquerdo70_1 = Pose(conditions: [
        AngleCondition(centerJoint: .left_forearm_joint, firstJoint: .left_arm_joint, secondJoint: .left_hand_joint, condition: .less, inferiorLimit: 70, upperLimit: 110)])
    
    
    static var flexaoOmbroECotoveloEsquerdo75 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .left_arm_joint, secondB: .left_forearm_joint, condition: .greater, limit: 90),
        AngleCondition(centerJoint: .left_forearm_joint, firstJoint: .left_arm_joint, secondJoint: .left_hand_joint, condition: .less, inferiorLimit: 60, upperLimit: 120)])
    static var flexaoOmbroEsquerdo90_1 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .left_arm_joint, secondB: .left_forearm_joint, condition: .greater, limit: 90)])
    static var flexaoCotoveloEsquerdo60_1 = Pose(conditions: [
        AngleCondition(centerJoint: .left_forearm_joint, firstJoint: .left_arm_joint, secondJoint: .left_hand_joint, condition: .less, inferiorLimit: 60, upperLimit: 120)])
    
    static var flexaoOmbroECotoveloEsquerdo50 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .left_arm_joint, secondB: .left_forearm_joint, condition: .greater, limit: 60),
        AngleCondition(centerJoint: .left_forearm_joint, firstJoint: .left_arm_joint, secondJoint: .left_hand_joint, condition: .less, inferiorLimit: 50, upperLimit: 130)])
    static var flexaoOmbroEsquerdo60_1 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .left_arm_joint, secondB: .left_forearm_joint, condition: .greater, limit: 60)])
    static var flexaoCotoveloEsquerdo50_1 = Pose(conditions: [
        AngleCondition(centerJoint: .left_forearm_joint, firstJoint: .left_arm_joint, secondJoint: .left_hand_joint, condition: .less, inferiorLimit: 50, upperLimit: 130)])
    
    static var flexaoOmbroECotoveloEsquerdo25 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .left_arm_joint, secondB: .left_forearm_joint, condition: .greater, limit: 30),
        AngleCondition(centerJoint: .left_forearm_joint, firstJoint: .left_arm_joint, secondJoint: .left_hand_joint, condition: .less, inferiorLimit: 40, upperLimit: 140)])
    static var flexaoOmbroEsquerdo30_1 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .left_arm_joint, secondB: .left_forearm_joint, condition: .greater, limit: 30)])
    static var flexaoCotoveloEsquerdo40_1 = Pose(conditions: [
        AngleCondition(centerJoint: .left_forearm_joint, firstJoint: .left_arm_joint, secondJoint: .left_hand_joint, condition: .less, inferiorLimit: 40, upperLimit: 140)])
    
    
    // Separa os pés (abre a base)
    static var abreBase40 = Pose(conditions: [AxisDistanceCondition(firstJoint: .left_foot_joint, secondJoint: .right_foot_joint, condition: .greater, axis: .y, limit: 0.40)])
    static var abreBase35 = Pose(conditions: [AxisDistanceCondition(firstJoint: .left_foot_joint, secondJoint: .right_foot_joint, condition: .greater, axis: .y, limit: 0.35)])
    static var abreBase30 = Pose(conditions: [AxisDistanceCondition(firstJoint: .left_foot_joint, secondJoint: .right_foot_joint, condition: .greater, axis: .y, limit: 0.30)])
    static var abreBase25 = Pose(conditions: [AxisDistanceCondition(firstJoint: .left_foot_joint, secondJoint: .right_foot_joint, condition: .greater, axis: .y, limit: 0.25)])
    
    static var fechaBase = Pose(conditions: [AxisDistanceCondition(firstJoint: .left_foot_joint, secondJoint: .right_foot_joint, condition: .greater, axis: .y, limit: 0.20)])
    
    
    // Posição de cruz com braços para trás passando a linha dos ombros
    static var circunducaoRetornoDireito100 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .right_arm_joint, secondB: .right_forearm_joint, condition: .greater, limit: 80),
        PosCondition(firstJoint: .right_forearm_joint, secondJoint: .right_shoulder_1_joint, condition: .less, axis: .z)])
    static var circunducaoRetornoDireito75 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .right_arm_joint, secondB: .right_forearm_joint, condition: .greater, limit: 70),
        PosCondition(firstJoint: .right_forearm_joint, secondJoint: .right_shoulder_1_joint, condition: .less, axis: .z)])
    static var circunducaoRetornoDireito50 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .right_arm_joint, secondB: .right_forearm_joint, condition: .greater, limit: 60),
        PosCondition(firstJoint: .right_forearm_joint, secondJoint: .right_shoulder_1_joint, condition: .less, axis: .z)])
    static var circunducaoRetornoDireito25 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .right_arm_joint, secondB: .right_forearm_joint, condition: .greater, limit: 50),
        PosCondition(firstJoint: .right_forearm_joint, secondJoint: .right_shoulder_1_joint, condition: .less, axis: .z)])
    
    static var circunducaoRetornoEsquerdo100 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .left_arm_joint, secondB: .left_forearm_joint, condition: .greater, limit: 80),
        PosCondition(firstJoint: .left_forearm_joint, secondJoint: .left_shoulder_1_joint, condition: .less, axis: .z)])
    static var circunducaoRetornoEsquerdo75 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .left_arm_joint, secondB: .left_forearm_joint, condition: .greater, limit: 70),
        PosCondition(firstJoint: .left_forearm_joint, secondJoint: .left_shoulder_1_joint, condition: .less, axis: .z)])
    static var circunducaoRetornoEsquerdo50 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .left_arm_joint, secondB: .left_forearm_joint, condition: .greater, limit: 60),
        PosCondition(firstJoint: .left_forearm_joint, secondJoint: .left_shoulder_1_joint, condition: .less, axis: .z)])
    static var circunducaoRetornoEsquerdo25 = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .left_arm_joint, secondB: .left_forearm_joint, condition: .greater, limit: 50),
        PosCondition(firstJoint: .left_forearm_joint, secondJoint: .left_shoulder_1_joint, condition: .less, axis: .z)])
    
    
    // Cruzar os braços
    // Direito
    static var cruzaBracoDireito100 = Pose(conditions: [CoordCondition(firstJoint: .right_hand_joint, condition: .greater, axis: .x, limit: -0.1)])
    static var cruzaBracoDireito75 = Pose(conditions: [CoordCondition(firstJoint: .right_hand_joint, condition: .greater, axis: .x, limit: -0.15)])
    static var cruzaBracoDireito50 = Pose(conditions: [CoordCondition(firstJoint: .right_hand_joint, condition: .greater, axis: .x, limit: -0.2)])
    static var cruzaBracoDireito25 = Pose(conditions: [CoordCondition(firstJoint: .right_hand_joint, condition: .greater, axis: .x, limit: -0.25)])
    
    // Esquerdo
    static var cruzaBracoEsquerdo100 = Pose(conditions: [CoordCondition(firstJoint: .left_hand_joint, condition: .less, axis: .x, limit: 0.1)])
    static var cruzaBracoEsquerdo75 = Pose(conditions: [CoordCondition(firstJoint: .left_hand_joint, condition: .less, axis: .x, limit: 0.15)])
    static var cruzaBracoEsquerdo50 = Pose(conditions: [CoordCondition(firstJoint: .left_hand_joint, condition: .less, axis: .x, limit: 0.2)])
    static var cruzaBracoEsquerdo25 = Pose(conditions: [CoordCondition(firstJoint: .left_hand_joint, condition: .less, axis: .x, limit: 0.25)])
    
    
    // Abre braços (separa as mãos)
    // Direito
    static var abreBracoDireito100 = Pose(conditions: [CoordCondition(firstJoint: .right_hand_joint, condition: .less, axis: .x, limit: -0.6)])
    static var abreBracoDireito75 = Pose(conditions: [CoordCondition(firstJoint: .right_hand_joint, condition: .less, axis: .x, limit: -0.5)])
    static var abreBracoDireito50 = Pose(conditions: [CoordCondition(firstJoint: .right_hand_joint, condition: .less, axis: .x, limit: -0.4)])
    static var abreBracoDireito25 = Pose(conditions: [CoordCondition(firstJoint: .right_hand_joint, condition: .less, axis: .x, limit: -0.3)])
    
    // Esquerdo
    static var abreBracoEsquerdo100 = Pose(conditions: [CoordCondition(firstJoint: .left_hand_joint, condition: .greater, axis: .x, limit: 0.5)])
    static var abreBracoEsquerdo75 = Pose(conditions: [CoordCondition(firstJoint: .left_hand_joint, condition: .greater, axis: .x, limit: 0.4)])
    static var abreBracoEsquerdo50 = Pose(conditions: [CoordCondition(firstJoint: .left_hand_joint, condition: .greater, axis: .x, limit: 0.3)])
    static var abreBracoEsquerdo25 = Pose(conditions: [CoordCondition(firstJoint: .left_hand_joint, condition: .greater, axis: .x, limit: 0.2)])
    
    // Mãos próximas aos olhos
    // Direita
    static var maoDireitaNosOlhos100 = Pose(conditions: [DistanceCondition(firstJoint: .right_hand_joint, secondJoint: .head_joint, condition: .less, limit: 0.4)])
    static var maoDireitaNosOlhos75 = Pose(conditions: [DistanceCondition(firstJoint: .right_hand_joint, secondJoint: .head_joint, condition: .less, limit: 0.45)])
    static var maoDireitaNosOlhos50 = Pose(conditions: [DistanceCondition(firstJoint: .right_hand_joint, secondJoint: .head_joint, condition: .less, limit: 0.5)])
    static var maoDireitaNosOlhos25 = Pose(conditions: [DistanceCondition(firstJoint: .right_hand_joint, secondJoint: .head_joint, condition: .less, limit: 0.55)])
    
    // Esquerda
    static var maoEsquerdaNosOlhos100 = Pose(conditions: [DistanceCondition(firstJoint: .left_hand_joint, secondJoint: .head_joint, condition: .less, limit: 0.4)])
    static var maoEsquerdaNosOlhos75 = Pose(conditions: [DistanceCondition(firstJoint: .left_hand_joint, secondJoint: .head_joint, condition: .less, limit: 0.45)])
    static var maoEsquerdaNosOlhos50 = Pose(conditions: [DistanceCondition(firstJoint: .left_hand_joint, secondJoint: .head_joint, condition: .less, limit: 0.5)])
    static var maoEsquerdaNosOlhos25 = Pose(conditions: [DistanceCondition(firstJoint: .left_hand_joint, secondJoint: .head_joint, condition: .less, limit: 0.55)])
    
    
    
    // Stronger
    
    // Eleva ombro
    static var elevaOmbroEsquerdo100 = Pose(conditions: [PosCondition(firstJoint: .left_shoulder_1_joint, secondJoint: .right_shoulder_1_joint, condition: .greater, axis: .y, limit: 0.01)])
    static var elevaOmbroDireito100 = Pose(conditions: [PosCondition(firstJoint: .right_shoulder_1_joint, secondJoint: .left_shoulder_1_joint, condition: .greater, axis: .y, limit: 0.01)])
    
    // Posição de retorno
    static var ombrosMesmaAltura = Pose(conditions: [AxisDistanceCondition(firstJoint: .right_shoulder_1_joint, secondJoint: .left_shoulder_1_joint, condition: .less, axis: .y, limit: 0.01)])
    
    
    // Flexão de cotovelo
    static var flexaoCotoveloEsquerdo105 = Pose(conditions: [AngleCondition(centerJoint: .left_forearm_joint, firstJoint: .left_arm_joint, secondJoint: .left_hand_joint, condition: .between, inferiorLimit: 75, upperLimit: 105)])
    static var flexaoCotoveloEsquerdo110 = Pose(conditions: [AngleCondition(centerJoint: .left_forearm_joint, firstJoint: .left_arm_joint, secondJoint: .left_hand_joint, condition: .between, inferiorLimit: 70, upperLimit: 110)])
    static var flexaoCotoveloEsquerdo115 = Pose(conditions: [AngleCondition(centerJoint: .left_forearm_joint, firstJoint: .left_arm_joint, secondJoint: .left_hand_joint, condition: .between, inferiorLimit: 65, upperLimit: 115)])
    static var flexaoCotoveloEsquerdo120 = Pose(conditions: [AngleCondition(centerJoint: .left_forearm_joint, firstJoint: .left_arm_joint, secondJoint: .left_hand_joint, condition: .between, inferiorLimit: 60, upperLimit: 120)])
    
    static var flexaoCotoveloDireito105 = Pose(conditions: [AngleCondition(centerJoint: .right_forearm_joint, firstJoint: .right_arm_joint, secondJoint: .right_hand_joint, condition: .between, inferiorLimit: 75, upperLimit: 105)])
    static var flexaoCotoveloDireito110 = Pose(conditions: [AngleCondition(centerJoint: .right_forearm_joint, firstJoint: .right_arm_joint, secondJoint: .right_hand_joint, condition: .between, inferiorLimit: 70, upperLimit: 110)])
    static var flexaoCotoveloDireito115 = Pose(conditions: [AngleCondition(centerJoint: .right_forearm_joint, firstJoint: .right_arm_joint, secondJoint: .right_hand_joint, condition: .between, inferiorLimit: 65, upperLimit: 116)])
    static var flexaoCotoveloDireito120 = Pose(conditions: [AngleCondition(centerJoint: .right_forearm_joint, firstJoint: .right_arm_joint, secondJoint: .right_hand_joint, condition: .between, inferiorLimit: 60, upperLimit: 120)])
    
    // Posição de retorno com os braços para baixo
    static var bracoDireitoBaixo = Pose(conditions: [AxisAngleCondition(firstJoint: .right_arm_joint, secondJoint: .right_forearm_joint, axis: .y, axisPositive: false, condition: .less, limit: 30)])
    static var bracoEsquerdoBaixo = Pose(conditions: [AxisAngleCondition(firstJoint: .left_arm_joint, secondJoint: .left_forearm_joint, axis: .y, axisPositive: false, condition: .less, limit: 30)])
    
    // Extensão de cotovelo
    // Direito
    static var extensaoCotoveloDireito135 = Pose(conditions: [AngleCondition(centerJoint: .right_forearm_joint, firstJoint: .right_arm_joint, secondJoint: .right_hand_joint, condition: .greater, limit: 135)])
    static var extensaoCotoveloDireito130 = Pose(conditions: [AngleCondition(centerJoint: .right_forearm_joint, firstJoint: .right_arm_joint, secondJoint: .right_hand_joint, condition: .greater, limit: 130)])
    static var extensaoCotoveloDireito125 = Pose(conditions: [AngleCondition(centerJoint: .right_forearm_joint, firstJoint: .right_arm_joint, secondJoint: .right_hand_joint, condition: .greater, limit: 125)])
    static var extensaoCotoveloDireito120 = Pose(conditions: [AngleCondition(centerJoint: .right_forearm_joint, firstJoint: .right_arm_joint, secondJoint: .right_hand_joint, condition: .greater, limit: 120)])
    // Esquerdo
    static var extensaoCotoveloEsquerdo135 = Pose(conditions: [AngleCondition(centerJoint: .left_forearm_joint, firstJoint: .left_arm_joint, secondJoint: .left_hand_joint, condition: .greater, limit: 135)])
    static var extensaoCotoveloEsquerdo130 = Pose(conditions: [AngleCondition(centerJoint: .left_forearm_joint, firstJoint: .left_arm_joint, secondJoint: .left_hand_joint, condition: .greater, limit: 130)])
    static var extensaoCotoveloEsquerdo125 = Pose(conditions: [AngleCondition(centerJoint: .left_forearm_joint, firstJoint: .left_arm_joint, secondJoint: .left_hand_joint, condition: .greater, limit: 125)])
    static var extensaoCotoveloEsquerdo120 = Pose(conditions: [AngleCondition(centerJoint: .left_forearm_joint, firstJoint: .left_arm_joint, secondJoint: .left_hand_joint, condition: .greater, limit: 120)])
    
    // Inclinação do tronco para a direita, esquerda, frente e trás
    
    static var troncoParaDireita035 = Pose(conditions: [
        AxisDistanceCondition(firstJoint: .hips_joint, secondJoint: .spine_7_joint, condition: .greater, axis: .x, limit: 0.035),
        CoordCondition(firstJoint: .spine_7_joint, condition: .less, axis: .x, limit: 0)
    ])
    static var troncoParaDireita03 = Pose(conditions: [
        AxisDistanceCondition(firstJoint: .hips_joint, secondJoint: .spine_7_joint, condition: .greater, axis: .x, limit: 0.03),
        CoordCondition(firstJoint: .spine_7_joint, condition: .less, axis: .x, limit: 0)
    ])
    static var troncoParaDireita025 = Pose(conditions: [
        AxisDistanceCondition(firstJoint: .hips_joint, secondJoint: .spine_7_joint, condition: .greater, axis: .x, limit: 0.025),
        CoordCondition(firstJoint: .spine_7_joint, condition: .less, axis: .x, limit: 0)
    ])
    static var troncoParaDireita02 = Pose(conditions: [
        AxisDistanceCondition(firstJoint: .hips_joint, secondJoint: .spine_7_joint, condition: .greater, axis: .x, limit: 0.02),
        CoordCondition(firstJoint: .spine_7_joint, condition: .less, axis: .x, limit: 0)
    ])
    
    // esquerda
    static var troncoParaEsquerda035 = Pose(conditions: [
        AxisDistanceCondition(firstJoint: .hips_joint, secondJoint: .spine_7_joint, condition: .greater, axis: .x, limit: 0.035
        ),
        CoordCondition(firstJoint: .spine_7_joint, condition: .greater, axis: .x, limit: 0)
    ])
    static var troncoParaEsquerda03 = Pose(conditions: [
        AxisDistanceCondition(firstJoint: .hips_joint, secondJoint: .spine_7_joint, condition: .greater, axis: .x, limit: 0.03
        ),
        CoordCondition(firstJoint: .spine_7_joint, condition: .greater, axis: .x, limit: 0)
    ])
    static var troncoParaEsquerda025 = Pose(conditions: [
        AxisDistanceCondition(firstJoint: .hips_joint, secondJoint: .spine_7_joint, condition: .greater, axis: .x, limit: 0.025
        ),
        CoordCondition(firstJoint: .spine_7_joint, condition: .greater, axis: .x, limit: 0)
    ])
    static var troncoParaEsquerda02 = Pose(conditions: [
        AxisDistanceCondition(firstJoint: .hips_joint, secondJoint: .spine_7_joint, condition: .greater, axis: .x, limit: 0.02
        ),
        CoordCondition(firstJoint: .spine_7_joint, condition: .greater, axis: .x, limit: 0)
    ])
    
    // frente
    static var troncoParaFrente06 = Pose(conditions: [
        AxisDistanceCondition(firstJoint: .hips_joint, secondJoint: .spine_7_joint, condition: .greater, axis: .z, limit: 0.06
        ),
        CoordCondition(firstJoint: .spine_7_joint, condition: .greater, axis: .z, limit: 0)
    ])
    static var troncoParaFrente058 = Pose(conditions: [
        AxisDistanceCondition(firstJoint: .hips_joint, secondJoint: .spine_7_joint, condition: .greater, axis: .z, limit: 0.058
        ),
        CoordCondition(firstJoint: .spine_7_joint, condition: .greater, axis: .z, limit: 0)
    ])
    static var troncoParaFrente056 = Pose(conditions: [
        AxisDistanceCondition(firstJoint: .hips_joint, secondJoint: .spine_7_joint, condition: .greater, axis: .z, limit: 0.056
        ),
        CoordCondition(firstJoint: .spine_7_joint, condition: .greater, axis: .z, limit: 0)
    ])
    static var troncoParaFrente054 = Pose(conditions: [
        AxisDistanceCondition(firstJoint: .hips_joint, secondJoint: .spine_7_joint, condition: .greater, axis: .z, limit: 0.054
        ),
        CoordCondition(firstJoint: .spine_7_joint, condition: .greater, axis: .z, limit: 0)
    ])
    
    // trás
    static var troncoParaTras120 = Pose(conditions: [
        AngleBetweenVectorsInPlaneCondition(firstA: .hips_joint, secondA: .spine_7_joint, firstB: .right_upLeg_joint, secondB: .right_leg_joint, plane: .x, condition: .greater, limit: 120)
    ])
    static var troncoParaTras110 = Pose(conditions: [
        AngleBetweenVectorsInPlaneCondition(firstA: .hips_joint, secondA: .spine_7_joint, firstB: .right_upLeg_joint, secondB: .right_leg_joint, plane: .x, condition: .greater, limit: 110)
    ])
    static var troncoParaTras100 = Pose(conditions: [
        AngleBetweenVectorsInPlaneCondition(firstA: .hips_joint, secondA: .spine_7_joint, firstB: .right_upLeg_joint, secondB: .right_leg_joint, plane: .x, condition: .greater, limit: 100)
    ])
    static var troncoParaTras90 = Pose(conditions: [
        AngleBetweenVectorsInPlaneCondition(firstA: .hips_joint, secondA: .spine_7_joint, firstB: .right_upLeg_joint, secondB: .right_leg_joint, plane: .x, condition: .greater, limit: 90)
    ])
    
    // Mão direita cruza na frente do peito até passar o ombro esquerdo
    static var maoDireitaParaEsquerda = Pose(conditions: [PosCondition(firstJoint: .right_hand_joint, secondJoint: .left_shoulder_1_joint, condition: .greater, axis: .x)])
    
    static var maoEsquerdaParaDireita = Pose(conditions: [PosCondition(firstJoint: .left_hand_joint, secondJoint: .right_shoulder_1_joint, condition: .less, axis: .x)])
    
    // Mão se cruzam
    static var maoDireitaCruza = Pose(conditions: [CoordCondition(firstJoint: .right_hand_joint, condition: .greater, axis: .x, limit: 0)])
    static var maoEsquerdaCruza = Pose(conditions: [CoordCondition(firstJoint: .left_hand_joint, condition: .less, axis: .x, limit: 0)])
    
    // Mãos unidas acima da cabeça
    // Direita
    static var maoDireitaAcimaCabecaCentro = Pose(conditions: [
        CoordCondition(firstJoint: .right_hand_joint, condition: .between, axis: .x, inferiorLimit: -0.2, upperLimit: 0.2),
        PosCondition(firstJoint: .right_hand_joint, secondJoint: .head_joint, condition: .greater, axis: .y)])
    // Esquerda
    static var maoEsquerdaAcimaCabecaCentro = Pose(conditions: [
        CoordCondition(firstJoint: .left_hand_joint, condition: .between, axis: .x, inferiorLimit: -0.2, upperLimit: 0.2),
        PosCondition(firstJoint: .left_hand_joint, secondJoint: .head_joint, condition: .greater, axis: .y)])
    
    // Borboleta (braços para a frente, abre em pose de Cristo e fecha)
    
    static var borboletaDireitoAberta70 = Pose(conditions: [AxisAngleCondition(firstJoint: .right_arm_joint, secondJoint: .right_forearm_joint, axis: .z, axisPositive: true, condition: .greater, limit: 70)])
    static var borboletaDireitoAberta60 = Pose(conditions: [AxisAngleCondition(firstJoint: .right_arm_joint, secondJoint: .right_forearm_joint, axis: .z, axisPositive: true, condition: .greater, limit: 60)])
    static var borboletaDireitoAberta50 = Pose(conditions: [AxisAngleCondition(firstJoint: .right_arm_joint, secondJoint: .right_forearm_joint, axis: .z, axisPositive: true, condition: .greater, limit: 50)])
    static var borboletaDireitoAberta40 = Pose(conditions: [AxisAngleCondition(firstJoint: .right_arm_joint, secondJoint: .right_forearm_joint, axis: .z, axisPositive: true, condition: .greater, limit: 40)])
    
    static var borboletaEsquerdoAberta70 = Pose(conditions: [AxisAngleCondition(firstJoint: .left_arm_joint, secondJoint: .left_forearm_joint, axis: .z, axisPositive: true, condition: .greater, limit: 70)])
    static var borboletaEsquerdoAberta60 = Pose(conditions: [AxisAngleCondition(firstJoint: .left_arm_joint, secondJoint: .left_forearm_joint, axis: .z, axisPositive: true, condition: .greater, limit: 60)])
    static var borboletaEsquerdoAberta50 = Pose(conditions: [AxisAngleCondition(firstJoint: .left_arm_joint, secondJoint: .left_forearm_joint, axis: .z, axisPositive: true, condition: .greater, limit: 50)])
    static var borboletaEsquerdoAberta40 = Pose(conditions: [AxisAngleCondition(firstJoint: .left_arm_joint, secondJoint: .left_forearm_joint, axis: .z, axisPositive: true, condition: .greater, limit: 40)])
    
    static var borboletaEsquerdoFechada0 = Pose(conditions: [AxisAngleCondition(firstJoint: .left_arm_joint, secondJoint: .left_forearm_joint, axis: .z, axisPositive: true, condition: .less, limit: 0)])
    static var borboletaEsquerdoFechada5 = Pose(conditions: [AxisAngleCondition(firstJoint: .left_arm_joint, secondJoint: .left_forearm_joint, axis: .z, axisPositive: true, condition: .less, limit: 5)])
    static var borboletaEsquerdoFechada10 = Pose(conditions: [AxisAngleCondition(firstJoint: .left_arm_joint, secondJoint: .left_forearm_joint, axis: .z, axisPositive: true, condition: .less, limit: 10)])
    static var borboletaEsquerdoFechada15 = Pose(conditions: [AxisAngleCondition(firstJoint: .left_arm_joint, secondJoint: .left_forearm_joint, axis: .z, axisPositive: true, condition: .less, limit: 15)])
    
    static var borboletaDireitoFechada0 = Pose(conditions: [AxisAngleCondition(firstJoint: .right_arm_joint, secondJoint: .right_forearm_joint, axis: .z, axisPositive: true, condition: .less, limit: 0)])
    static var borboletaDireitoFechada5 = Pose(conditions: [AxisAngleCondition(firstJoint: .right_arm_joint, secondJoint: .right_forearm_joint, axis: .z, axisPositive: true, condition: .less, limit: 5)])
    static var borboletaDireitoFechada10 = Pose(conditions: [AxisAngleCondition(firstJoint: .right_arm_joint, secondJoint: .right_forearm_joint, axis: .z, axisPositive: true, condition: .less, limit: 10)])
    static var borboletaDireitoFechada15 = Pose(conditions: [AxisAngleCondition(firstJoint: .right_arm_joint, secondJoint: .right_forearm_joint, axis: .z, axisPositive: true, condition: .less, limit: 15)])
    
    // alternando cotovelo direito acima do cotovelo esquerdo e vice-versa
    static var cotoveloDireitoAcimaDoEsquerdo = Pose(conditions: [PosCondition(firstJoint: .right_forearm_joint, secondJoint: .left_forearm_joint, condition: .greater, axis: .y)])
    static var cotoveloEsquerdoAcimaDoDireito = Pose(conditions: [PosCondition(firstJoint: .left_forearm_joint, secondJoint: .right_forearm_joint, condition: .greater, axis: .y)])
    
    // antebraço apontando para cima
    static var antebracoDireitoParaCima30 = Pose(conditions: [AxisAngleCondition(firstJoint: .right_forearm_joint, secondJoint: .right_hand_joint, axis: .y, axisPositive: true, condition: .less, limit: 35)])
    static var antebracoDireitoParaCima35 = Pose(conditions: [AxisAngleCondition(firstJoint: .right_forearm_joint, secondJoint: .right_hand_joint, axis: .y, axisPositive: true, condition: .less, limit: 40)])
    static var antebracoDireitoParaCima40 = Pose(conditions: [AxisAngleCondition(firstJoint: .right_forearm_joint, secondJoint: .right_hand_joint, axis: .y, axisPositive: true, condition: .less, limit: 45)])
    static var antebracoDireitoParaCima45 = Pose(conditions: [AxisAngleCondition(firstJoint: .right_forearm_joint, secondJoint: .right_hand_joint, axis: .y, axisPositive: true, condition: .less, limit: 50)])
    
    static var antebracoEsquerdoParaCima30 = Pose(conditions: [AxisAngleCondition(firstJoint: .left_forearm_joint, secondJoint: .left_hand_joint, axis: .y, axisPositive: true, condition: .less, limit: 35)])
    static var antebracoEsquerdoParaCima35 = Pose(conditions: [AxisAngleCondition(firstJoint: .left_forearm_joint, secondJoint: .left_hand_joint, axis: .y, axisPositive: true, condition: .less, limit: 40)])
    static var antebracoEsquerdoParaCima40 = Pose(conditions: [AxisAngleCondition(firstJoint: .left_forearm_joint, secondJoint: .left_hand_joint, axis: .y, axisPositive: true, condition: .less, limit: 45)])
    static var antebracoEsquerdoParaCima45 = Pose(conditions: [AxisAngleCondition(firstJoint: .left_forearm_joint, secondJoint: .left_hand_joint, axis: .y, axisPositive: true, condition: .less, limit: 50)])
    
    // antebraco apontando para o lado
    static var antebracoDireitoParaLado30 = Pose(conditions: [AxisAngleCondition(firstJoint: .right_forearm_joint, secondJoint: .right_hand_joint, axis: .x, axisPositive: true, condition: .less, limit: 35)])
    static var antebracoDireitoParaLado35 = Pose(conditions: [AxisAngleCondition(firstJoint: .right_forearm_joint, secondJoint: .right_hand_joint, axis: .x, axisPositive: true, condition: .less, limit: 40)])
    static var antebracoDireitoParaLado40 = Pose(conditions: [AxisAngleCondition(firstJoint: .right_forearm_joint, secondJoint: .right_hand_joint, axis: .x, axisPositive: true, condition: .less, limit: 45)])
    static var antebracoDireitoParaLado45 = Pose(conditions: [AxisAngleCondition(firstJoint: .right_forearm_joint, secondJoint: .right_hand_joint, axis: .x, axisPositive: true, condition: .less, limit: 50)])
    
    static var antebracoEsquerdoParaLado30 = Pose(conditions: [AxisAngleCondition(firstJoint: .left_forearm_joint, secondJoint: .left_hand_joint, axis: .x, axisPositive: false, condition: .less, limit: 35)])
    static var antebracoEsquerdoParaLado35 = Pose(conditions: [AxisAngleCondition(firstJoint: .left_forearm_joint, secondJoint: .left_hand_joint, axis: .x, axisPositive: false, condition: .less, limit: 40)])
    static var antebracoEsquerdoParaLado40 = Pose(conditions: [AxisAngleCondition(firstJoint: .left_forearm_joint, secondJoint: .left_hand_joint, axis: .x, axisPositive: false, condition: .less, limit: 45)])
    static var antebracoEsquerdoParaLado45 = Pose(conditions: [AxisAngleCondition(firstJoint: .left_forearm_joint, secondJoint: .left_hand_joint, axis: .x, axisPositive: false, condition: .less, limit: 50)])
    
    static var cabecaParaDireita = Pose(conditions: [CoordCondition(firstJoint: .head_joint, condition: .less, axis: .x, limit: -0.04)])
    
    static var cabecaParaEsquerda = Pose(conditions: [CoordCondition(firstJoint: .head_joint, condition: .greater, axis: .x, limit: 0.04)])
    
    
    
    // Testes anteriores
    
    static var erguePernaDireita = Pose(conditions: [
        AxisDistanceCondition(firstJoint: .right_foot_joint, secondJoint: .left_foot_joint, condition: .greater, axis: .y, limit: 0.1),
        PosCondition(firstJoint: .right_foot_joint, secondJoint: .left_foot_joint, condition: .greater, axis: .y)
    ])
    
    static var erguePernaEsquerda = Pose(conditions: [
        AxisDistanceCondition(firstJoint: .left_foot_joint, secondJoint: .right_foot_joint, condition: .greater, axis: .y, limit: 0.1),
        PosCondition(firstJoint: .left_foot_joint, secondJoint: .right_foot_joint, condition: .greater, axis: .y)
    ])
    
    // Angulo próximo a 90 entre o tronco e o braço
    static var bracoDireitoFrente = Pose(conditions: [
        AngleBetweenVectorsCondition(firstA: .spine_7_joint, secondA: .spine_1_joint, firstB: .right_arm_joint, secondB: .right_forearm_joint, condition: .between, inferiorLimit: 45, upperLimit: 135)
    ])
    
    static var polichineloCima = Pose(conditions: [
        AxisAngleCondition(firstJoint: .left_upLeg_joint, secondJoint: .left_leg_joint, axis: .y, axisPositive: false, condition: .greater, limit: 20),
        AxisAngleCondition(firstJoint: .right_upLeg_joint, secondJoint: .right_leg_joint, axis: .y, axisPositive: false, condition: .greater, limit: 20),
        AxisAngleCondition(firstJoint: .left_arm_joint, secondJoint: .left_forearm_joint, axis: .y, axisPositive: true, condition: .less, limit: 60),
        AxisAngleCondition(firstJoint: .right_arm_joint, secondJoint: .right_forearm_joint, axis: .y, axisPositive: true, condition: .less, limit: 60)
    ])
    
    static var normal = Pose(conditions: [
        AxisAngleCondition(firstJoint: .left_upLeg_joint, secondJoint: .left_leg_joint, axis: .y, axisPositive: false, condition: .less, limit: 45),
        AxisAngleCondition(firstJoint: .right_upLeg_joint, secondJoint: .right_leg_joint, axis: .y, axisPositive: false, condition: .less, limit: 45),
        AxisAngleCondition(firstJoint: .left_arm_joint, secondJoint: .left_forearm_joint, axis: .y, axisPositive: false, condition: .less, limit: 90),
        AxisAngleCondition(firstJoint: .right_arm_joint, secondJoint: .right_forearm_joint, axis: .y, axisPositive: false, condition: .less, limit: 90)
    ])
    
    static var bracoDireitoNormal = Pose(conditions: [AxisAngleCondition(firstJoint: .right_arm_joint, secondJoint: .right_forearm_joint, axis: .y, axisPositive: false, condition: .less, limit: 90)])
    
    static var bracoEsquerdoNormal = Pose(conditions: [AxisAngleCondition(firstJoint: .left_arm_joint, secondJoint: .left_forearm_joint, axis: .y, axisPositive: false, condition: .less, limit: 90)])
    
    static var pernaDireitaNormal = Pose(conditions: [AxisAngleCondition(firstJoint: .right_upLeg_joint, secondJoint: .right_leg_joint, axis: .y, axisPositive: false, condition: .less, limit: 45)])
    
    static var pernaEsquerdaNormal = Pose(conditions: [AxisAngleCondition(firstJoint: .left_upLeg_joint, secondJoint: .left_leg_joint, axis: .y, axisPositive: false, condition: .less, limit: 45)])
    
    static var pegaCruzadoDireita = Pose(conditions: [
        PosCondition(firstJoint: .right_hand_joint, secondJoint: .right_shoulder_1_joint, condition: .greater, axis: .y),
        CoordCondition(firstJoint: .right_hand_joint, condition: .greater, axis: .x, limit: -0.1)
    ])
    
    static var pegaCruzadoEsquerda = Pose(conditions: [
        PosCondition(firstJoint: .left_hand_joint, secondJoint: .left_shoulder_1_joint, condition: .greater, axis: .y),
        CoordCondition(firstJoint: .left_hand_joint, condition: .less, axis: .x, limit: 0.1)
    ])
    
    
    // Flexão ombro: Melhor para o pior -> 45, 90, 135, 179
    
    static var flexaoOmbroEsquerdo_179 = Pose(conditions: [
        AxisAngleCondition(firstJoint: .left_arm_joint, secondJoint: .right_forearm_joint, axis: .y, axisPositive: true, condition: .less, limit: 179),
    ])
    static var flexaoOmbroDireito_179 = Pose(conditions: [
        AxisAngleCondition(firstJoint: .right_arm_joint, secondJoint: .right_forearm_joint, axis: .y, axisPositive: true, condition: .less, limit: 179),
    ])
    
    static var flexaoOmbroEsquerdo_135 = Pose(conditions: [
        AxisAngleCondition(firstJoint: .left_arm_joint, secondJoint: .right_forearm_joint, axis: .y, axisPositive: true, condition: .less, limit: 135),
    ])
    static var flexaoOmbroDireito_135 = Pose(conditions: [
        AxisAngleCondition(firstJoint: .right_arm_joint, secondJoint: .right_forearm_joint, axis: .y, axisPositive: true, condition: .less, limit: 135),
    ])
    
    static var flexaoOmbroEsquerdo_90 = Pose(conditions: [
        AxisAngleCondition(firstJoint: .left_arm_joint, secondJoint: .right_forearm_joint, axis: .y, axisPositive: true, condition: .less, limit: 90),
    ])
    static var flexaoOmbroDireito_90 = Pose(conditions: [
        AxisAngleCondition(firstJoint: .right_arm_joint, secondJoint: .right_forearm_joint, axis: .y, axisPositive: true, condition: .less, limit: 90),
    ])
    
    static var flexaoOmbroEsquerdo_45 = Pose(conditions: [
        AxisAngleCondition(firstJoint: .left_arm_joint, secondJoint: .right_forearm_joint, axis: .y, axisPositive: true, condition: .less, limit: 45),
    ])
    static var flexaoOmbroDireito_45 = Pose(conditions: [
        AxisAngleCondition(firstJoint: .right_arm_joint, secondJoint: .right_forearm_joint, axis: .y, axisPositive: true, condition: .less, limit: 45),
    ])
    
    
    // Ombro direito para frente
    static var ombroDireitoParaFrente4 = Pose(conditions: [PosCondition(firstJoint: .right_shoulder_1_joint, secondJoint: .left_shoulder_1_joint, condition: .greater, axis: .z, limit: 0.20)])
    static var ombroDireitoParaFrente3 = Pose(conditions: [PosCondition(firstJoint: .right_shoulder_1_joint, secondJoint: .left_shoulder_1_joint, condition: .greater, axis: .z, limit: 0.15)])
    static var ombroDireitoParaFrente2 = Pose(conditions: [PosCondition(firstJoint: .right_shoulder_1_joint, secondJoint: .left_shoulder_1_joint, condition: .greater, axis: .z, limit: 0.10)])
    static var ombroDireitoParaFrente1 = Pose(conditions: [PosCondition(firstJoint: .right_shoulder_1_joint, secondJoint: .left_shoulder_1_joint, condition: .greater, axis: .z, limit: 0.5)])
    
    // Ombro esquerdo para frente
    static var ombroEsquerdoParaFrente4 = Pose(conditions: [PosCondition(firstJoint: .left_shoulder_1_joint, secondJoint: .right_shoulder_1_joint, condition: .greater, axis: .z, limit: 0.20)])
    static var ombroEsquerdoParaFrente3 = Pose(conditions: [PosCondition(firstJoint: .left_shoulder_1_joint, secondJoint: .right_shoulder_1_joint, condition: .greater, axis: .z, limit: 0.15)])
    static var ombroEsquerdoParaFrente2 = Pose(conditions: [PosCondition(firstJoint: .left_shoulder_1_joint, secondJoint: .right_shoulder_1_joint, condition: .greater, axis: .z, limit: 0.10)])
    static var ombroEsquerdoParaFrente1 = Pose(conditions: [PosCondition(firstJoint: .left_shoulder_1_joint, secondJoint: .right_shoulder_1_joint, condition: .greater, axis: .z, limit: 0.5)])
    
    
    // Rotação de tronco
    // Para direita
    static var rotacaoTroncoParaDireita40 = Pose(conditions: [AngleBetweenVectorsInPlaneCondition(firstA: .left_foot_joint, secondA: .right_foot_joint, firstB: .left_shoulder_1_joint, secondB: .right_shoulder_1_joint, plane: .y, condition: .greater, limit: 40),
                                                              CoordCondition(firstJoint: .right_foot_joint, condition: .greater, axis: .z, limit: 0)])
    static var rotacaoTroncoParaDireita35 = Pose(conditions: [AngleBetweenVectorsInPlaneCondition(firstA: .left_foot_joint, secondA: .right_foot_joint, firstB: .left_shoulder_1_joint, secondB: .right_shoulder_1_joint, plane: .y, condition: .greater, limit: 35),
                                                              CoordCondition(firstJoint: .right_foot_joint, condition: .greater, axis: .z, limit: 0)])
    static var rotacaoTroncoParaDireita30 = Pose(conditions: [AngleBetweenVectorsInPlaneCondition(firstA: .left_foot_joint, secondA: .right_foot_joint, firstB: .left_shoulder_1_joint, secondB: .right_shoulder_1_joint, plane: .y, condition: .greater, limit: 30),
                                                              CoordCondition(firstJoint: .right_foot_joint, condition: .greater, axis: .z, limit: 0)])
    static var rotacaoTroncoParaDireita25 = Pose(conditions: [AngleBetweenVectorsInPlaneCondition(firstA: .left_foot_joint, secondA: .right_foot_joint, firstB: .left_shoulder_1_joint, secondB: .right_shoulder_1_joint, plane: .y, condition: .greater, limit: 25),
                                                              CoordCondition(firstJoint: .right_foot_joint, condition: .greater, axis: .z, limit: 0)])
    // Para esquerda
    static var rotacaoTroncoParaEsquerda40 = Pose(conditions: [AngleBetweenVectorsInPlaneCondition(firstA: .right_foot_joint, secondA: .left_foot_joint, firstB: .right_shoulder_1_joint, secondB: .left_shoulder_1_joint, plane: .y, condition: .greater, limit: 40),
                                                              CoordCondition(firstJoint: .left_foot_joint, condition: .greater, axis: .z, limit: 0)])
    static var rotacaoTroncoParaEsquerda35 = Pose(conditions: [AngleBetweenVectorsInPlaneCondition(firstA: .right_foot_joint, secondA: .left_foot_joint, firstB: .right_shoulder_1_joint, secondB: .left_shoulder_1_joint, plane: .y, condition: .greater, limit: 35),
                                                              CoordCondition(firstJoint: .left_foot_joint, condition: .greater, axis: .z, limit: 0)])
    static var rotacaoTroncoParaEsquerda30 = Pose(conditions: [AngleBetweenVectorsInPlaneCondition(firstA: .right_foot_joint, secondA: .left_foot_joint, firstB: .right_shoulder_1_joint, secondB: .left_shoulder_1_joint, plane: .y, condition: .greater, limit: 30),
                                                              CoordCondition(firstJoint: .left_foot_joint, condition: .greater, axis: .z, limit: 0)])
    static var rotacaoTroncoParaEsquerda25 = Pose(conditions: [AngleBetweenVectorsInPlaneCondition(firstA: .right_foot_joint, secondA: .left_foot_joint, firstB: .right_shoulder_1_joint, secondB: .left_shoulder_1_joint, plane: .y, condition: .greater, limit: 25),
                                                              CoordCondition(firstJoint: .left_foot_joint, condition: .greater, axis: .z, limit: 0)])
    // Tronco não rotacionado (posição de retorno)
    static var troncoNaoRotacionado = Pose(conditions: [AngleBetweenVectorsInPlaneCondition(firstA: .left_foot_joint, secondA: .right_foot_joint, firstB: .left_shoulder_1_joint, secondB: .right_shoulder_1_joint, plane: .y, condition: .less, limit: 10)])
    
    static var flexaoJoelhoDireito140 = Pose(conditions: [AngleCondition(centerJoint: .right_leg_joint, firstJoint: .right_upLeg_joint, secondJoint: .right_foot_joint, condition: .less, limit: 140)])
    
    static var flexaoJoelhoEsquerdo140 = Pose(conditions: [AngleCondition(centerJoint: .left_leg_joint, firstJoint: .left_upLeg_joint, secondJoint: .left_foot_joint, condition: .less, limit: 140)])
    
    static var extensaoJoelhoDireito140 = Pose(conditions: [AngleCondition(centerJoint: .right_leg_joint, firstJoint: .right_upLeg_joint, secondJoint: .right_foot_joint, condition: .greater, limit: 140)])
    
    static var extensaoJoelhoEsquerdo140 = Pose(conditions: [AngleCondition(centerJoint: .left_leg_joint, firstJoint: .left_upLeg_joint, secondJoint: .left_foot_joint, condition: .greater, limit: 140)])
    
    
}
