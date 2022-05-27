//
//  ReturnPoseBank.swift
//  BodyDetection
//
//  Created by Rafael Forbeck on 09/05/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import Foundation

class ReturnPoseBank {
    
    static let pesNoChao = ReturnPose(pose: PoseBank.pesNoChao)
    static let pesJuntos = ReturnPose(pose: PoseBank.pesJuntos)
    
    static let ombrosMesmaAltura = ReturnPose(pose: PoseBank.ombrosMesmaAltura)
    static let bracoDireitoBaixo = ReturnPose(pose: PoseBank.bracoDireitoBaixo)
    static let bracoEsquerdoBaixo = ReturnPose(pose: PoseBank.bracoEsquerdoBaixo)
    
    static let cotoveloDireitoAcimaDoEsquerdo = ReturnPose(pose: PoseBank.cotoveloDireitoAcimaDoEsquerdo)
    static let cotoveloEsquerdoAcimaDoDireito = ReturnPose(pose: PoseBank.cotoveloEsquerdoAcimaDoDireito)
    
    static let antebracoDireitoParaCima = ReturnPose(pose: PoseBank.antebracoDireitoParaCima45)
    static let antebracoEsquerdoParaCima = ReturnPose(pose: PoseBank.antebracoEsquerdoParaCima45)
    static let antebracoDireitoParaLado = ReturnPose(pose: PoseBank.antebracoDireitoParaLado45)
    static let antebracoEsquerdoParaLado = ReturnPose(pose: PoseBank.antebracoEsquerdoParaLado45)
    
    static let flexaoCotoveloDireito = ReturnPose(pose: PoseBank.flexaoCotoveloDireito120)
    static let flexaoCotoveloEsquerdo = ReturnPose(pose: PoseBank.flexaoCotoveloEsquerdo120)
    
    static let extensaoCotoveloDireito = ReturnPose(pose: PoseBank.extensaoCotoveloDireito120)
    static let extensaoCotoveloEsquerdo = ReturnPose(pose: PoseBank.extensaoCotoveloEsquerdo120)
    
    static let troncoParaEsquerda = ReturnPose(pose: PoseBank.troncoParaEsquerda02)
    static let troncoParaDireita = ReturnPose(pose: PoseBank.troncoParaDireita02)
    
    static let ombroDireitoParaFrente = ReturnPose(pose: PoseBank.ombroDireitoParaFrente1)
    static let ombroEsquerdoParaFrente = ReturnPose(pose: PoseBank.ombroEsquerdoParaFrente1)
    
    static let troncoNaoRotacionado = ReturnPose(pose: PoseBank.troncoNaoRotacionado)
    
    static let fechaBase = ReturnPose(pose: PoseBank.fechaBase)
    
    static let cabecaParaDireita = ReturnPose(pose: PoseBank.cabecaParaDireita)
    static let cabecaParaEsquerda = ReturnPose(pose: PoseBank.cabecaParaEsquerda)
    
    static let joelhoDireitoExtendido = ReturnPose(pose: PoseBank.extensaoJoelhoDireito140)
    static let joelhoEsquerdoExtendido = ReturnPose(pose: PoseBank.extensaoJoelhoEsquerdo140)
}
