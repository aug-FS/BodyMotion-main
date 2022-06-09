//
//  TrackBanck.swift
//  BodyDetection
//
//  Created by Rafael Forbeck on 02/02/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import Foundation

class TrackBank {
    
    // ROCK WITH YOU
    
    static var rockPernaEsquerda = Track(member: .leftLeg, stepsInTrack: [])
    static var rockPernaDireita = Track(member: .rightLeg, stepsInTrack: [])
    static var rockBracoEsquerdo = Track(member: .leftArm, stepsInTrack: [])
    static var rockBracoDireito = Track(member: .rightArm, stepsInTrack: [])
    static var rockTronco = Track(member: .trunk, stepsInTrack: [])
    static var rockCabeca = Track(member: .head, stepsInTrack: [])
    
    static func setupRock() {
        
        let offset = -0.5
        
        rockBracoDireito.clear()
        rockBracoEsquerdo.clear()
        rockPernaDireita.clear()
        rockPernaEsquerda.clear()
        rockTronco.clear()
        rockCabeca.clear()
        
        // Posições de retorno
        let ombroDireitoParaFrente = ReturnPoseBank.ombroDireitoParaFrente
        let ombroEsquerdoParaFrente = ReturnPoseBank.ombroEsquerdoParaFrente
        let troncoNaoRotacionado = ReturnPoseBank.troncoNaoRotacionado
        let cotoveloDireitoExtendido = ReturnPoseBank.extensaoCotoveloDireito
        let cotoveloEsquerdoExtendido = ReturnPoseBank.extensaoCotoveloEsquerdo
        let cotoveloDireitoFlexionado = ReturnPoseBank.flexaoCotoveloDireito
        let cotoveloEsquerdoFlexionado = ReturnPoseBank.flexaoCotoveloEsquerdo
        let fechaBase = ReturnPoseBank.fechaBase
        let cabecaParaDireita = ReturnPoseBank.cabecaParaDireita
        let cabecaParaEsquerda = ReturnPoseBank.cabecaParaEsquerda
        let joelhoDireitoExtendido = ReturnPoseBank.joelhoDireitoExtendido
        let joelhoEsquerdoExtendido = ReturnPoseBank.joelhoEsquerdoExtendido
        
        // 0:00 - 0:10
        // 1 - Alterna ombros e braços para frente e trás e flexiona os joelhos alternadamente
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.ombroDireitoParaFrente, time: offset + 2.377, returnPose: ombroEsquerdoParaFrente))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.ombroEsquerdoParaFrente, time: offset + 3.086, returnPose: ombroDireitoParaFrente))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.ombroDireitoParaFrente, time: offset + 4.212, returnPose: ombroEsquerdoParaFrente))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.ombroEsquerdoParaFrente, time: offset + 5.255, returnPose: ombroDireitoParaFrente))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.ombroDireitoParaFrente, time: offset + 6.339, returnPose: ombroEsquerdoParaFrente))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.ombroEsquerdoParaFrente, time: offset + 7.340, returnPose: ombroDireitoParaFrente))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.ombroDireitoParaFrente, time: offset + 8.508, returnPose: ombroEsquerdoParaFrente))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.ombroEsquerdoParaFrente, time: offset + 9.342, returnPose: ombroDireitoParaFrente))
        
        // 0:10 - 0:18
        // 2 - Rotação de tronco (ombro para frente) Braço cruza na frente e depois flexiona o cotovelo
            // Rotação para esquerda
        rockTronco.insertStep(StepInTrack(step: StepBank.rotacaoTroncoParaEsquerda, time: offset + 10.593, returnPose: troncoNaoRotacionado))
            // Flexão cotovelo direito
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 11.094, returnPose: cotoveloDireitoExtendido))
            // Rotação para direita
        rockTronco.insertStep(StepInTrack(step: StepBank.rotacaoTroncoParaDireita, time: offset + 11.594, returnPose: troncoNaoRotacionado))
        // Flexão cotovelo esquerdo
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 12.095, returnPose: cotoveloEsquerdoExtendido))
            // Rotação para esquerda
        rockTronco.insertStep(StepInTrack(step: StepBank.rotacaoTroncoParaEsquerda, time: offset + 12.595, returnPose: troncoNaoRotacionado))
            // Flexão cotovelo direito
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 13.096, returnPose: cotoveloDireitoExtendido))
            // Rotação para direita
        rockTronco.insertStep(StepInTrack(step: StepBank.rotacaoTroncoParaDireita, time: offset + 13.555, returnPose: troncoNaoRotacionado))
        // Flexão cotovelo esquerdo
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 14.139, returnPose: cotoveloEsquerdoExtendido))
            // Rotação para esquerda
        rockTronco.insertStep(StepInTrack(step: StepBank.rotacaoTroncoParaEsquerda, time: offset + 14.639, returnPose: troncoNaoRotacionado))
            // Flexão cotovelo direito
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 15.181, returnPose: cotoveloDireitoExtendido))
            // Rotação para direita
        rockTronco.insertStep(StepInTrack(step: StepBank.rotacaoTroncoParaDireita, time: offset + 15.640, returnPose: troncoNaoRotacionado))
        // Flexão cotovelo esquerdo
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 16.182, returnPose: cotoveloEsquerdoExtendido))
            // Rotação para esquerda
        rockTronco.insertStep(StepInTrack(step: StepBank.rotacaoTroncoParaEsquerda, time: offset + 16.725, returnPose: troncoNaoRotacionado))
            // Flexão cotovelo direito
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 17.267, returnPose: cotoveloDireitoExtendido))
            // Rotação para direita
        rockTronco.insertStep(StepInTrack(step: StepBank.rotacaoTroncoParaDireita, time: offset + 17.809, returnPose: troncoNaoRotacionado))
        // Flexão cotovelo esquerdo
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 18.393, returnPose: cotoveloEsquerdoExtendido))
        
        // 0:18 - 0:26
        // 3 - Passo vai e volta para um lado e outro
            // Passo para a direita
                // Ergue pé direito
        rockPernaDireita.insertStep(StepInTrack(step: StepBank.elevaPeDireito, time: offset + 18.518))
                // Abre a base
        rockPernaDireita.insertStep(StepInTrack(step: StepBank.abreBase, time: offset + 18.810, returnPose: fechaBase))
            // Passo para a esquerda
                // Ergue pé esquerdo
        rockPernaEsquerda.insertStep(StepInTrack(step: StepBank.elevaPeEsquerdo, time: offset + 20.687))
                // Abre a base
        rockPernaEsquerda.insertStep(StepInTrack(step: StepBank.abreBase, time: offset + 21.021, returnPose: fechaBase))
            // Passo para a direita
                // Ergue pé direito
        rockPernaDireita.insertStep(StepInTrack(step: StepBank.elevaPeDireito, time: offset + 22.731))
                // Abre a base
        rockPernaDireita.insertStep(StepInTrack(step: StepBank.abreBase, time: offset + 23.148, returnPose: fechaBase))
            // Passo para a esquerda
                // Ergue pé esquerdo
        rockPernaEsquerda.insertStep(StepInTrack(step: StepBank.elevaPeEsquerdo, time: offset + 24.774))
                // Abre a base
        rockPernaEsquerda.insertStep(StepInTrack(step: StepBank.abreBase, time: offset + 25.150, returnPose: fechaBase))
        
        // 0:26 - 0:34
        // 4 - Passo para o lado. Abdução de ombro (relativo à coluna). Aproximadamente 150º
        // Passo para a direita
            // Ergue pé direito
        rockPernaDireita.insertStep(StepInTrack(step: StepBank.elevaPeDireito, time: offset + 26.860))
            // Abre a base
        rockPernaDireita.insertStep(StepInTrack(step: StepBank.abreBase, time: offset + 27.235, returnPose: fechaBase))
            // Abdução de ombro direito
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.abducaoOmbroDireito120, time: offset + 27.736))
        // Passo para a esquerda
            // Ergue pé esquerdo
        rockPernaEsquerda.insertStep(StepInTrack(step: StepBank.elevaPeEsquerdo, time: offset + 29.029))
            // Abre a base
        rockPernaEsquerda.insertStep(StepInTrack(step: StepBank.abreBase, time: offset + 29.279, returnPose: fechaBase))
            // Abdução de ombro esquerdo
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.abducaoOmbroEsquerdo120, time: offset + 29.821))
        // Passo para a direita
            // Ergue pé direito
        rockPernaDireita.insertStep(StepInTrack(step: StepBank.elevaPeDireito, time: offset + 31.114))
            // Abre a base
        rockPernaDireita.insertStep(StepInTrack(step: StepBank.abreBase, time: offset + 31.448, returnPose: fechaBase))
            // Abdução de ombro direito
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.abducaoOmbroDireito120, time: offset + 31.823))
        // Passo para a esquerda
            // Ergue pé esquerdo
        rockPernaEsquerda.insertStep(StepInTrack(step: StepBank.elevaPeEsquerdo, time: offset + 33.241))
            // Abre a base
        rockPernaEsquerda.insertStep(StepInTrack(step: StepBank.abreBase, time: offset + 33.491, returnPose: fechaBase))
            // Abdução de ombro esquerdo
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.abducaoOmbroEsquerdo120, time: offset + 33.825))
        
        // 0:34 - 0:44
        // 5 - Passo para o lado. Junta pernas. Flexão de cotovelos e abdução de ombro – dois lados ao mesmo tempo. Abaixa os braços
        // Passo para a direita
            // Flexão de cotovelos
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 35.326))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 35.326))
            // Ergue pé direito
        rockPernaDireita.insertStep(StepInTrack(step: StepBank.elevaPeDireito, time: offset + 35.368))
            // Abre a base
        rockPernaDireita.insertStep(StepInTrack(step: StepBank.abreBase, time: offset + 35.702, returnPose: fechaBase))
        // Abdução dois ombros
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.abducaoOmbroDireito120, time: offset + 37.037))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.abducaoOmbroEsquerdo120, time: offset + 37.037))
        // Passo para a esquerda
            // Ergue pé esquerdo
        rockPernaEsquerda.insertStep(StepInTrack(step: StepBank.elevaPeEsquerdo, time: offset + 37.454))
            // Abre a base
        rockPernaEsquerda.insertStep(StepInTrack(step: StepBank.abreBase, time: offset + 37.787, returnPose: fechaBase))
        // Passo para a direita
        // Flexão de cotovelos
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 39.581))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 39.581))
            // Ergue pé direito
        rockPernaDireita.insertStep(StepInTrack(step: StepBank.elevaPeDireito, time: offset + 39.581))
            // Abre a base
        rockPernaDireita.insertStep(StepInTrack(step: StepBank.abreBase, time: offset + 39.914, returnPose: fechaBase))
        // Abdução dois ombros
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.abducaoOmbroDireito120, time: offset + 41.166))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.abducaoOmbroEsquerdo120, time: offset + 41.166))
        // Passo para a esquerda
            // Ergue pé esquerdo
        rockPernaEsquerda.insertStep(StepInTrack(step: StepBank.elevaPeEsquerdo, time: offset + 41.624))
            // Abre a base
        rockPernaEsquerda.insertStep(StepInTrack(step: StepBank.abreBase, time: offset + 41.958, returnPose: fechaBase))
        
        // 0:44 - 0:46
        // 6 - Abre base, flexão de cotovelos
            // Vai direito
            // Flexão e extensão cotovelo direito
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 43.752))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 44.085, returnPose: cotoveloDireitoFlexionado))
            // Vai esquerdo
        // Flexão e extensão cotovelo esquerdo
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 44.794))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 45.170, returnPose: cotoveloEsquerdoFlexionado))
        // Abre a base
        rockPernaDireita.insertStep(StepInTrack(step: StepBank.abreBase, time: offset + 45.170))
        
        // 0:46 - 0:48
        // 7 - Movimento com a cabeça
        rockCabeca.insertStep(StepInTrack(step: StepBank.cabecaParaEsquerda, time: offset + 45.754, returnPose: cabecaParaDireita))
        rockCabeca.insertStep(StepInTrack(step: StepBank.cabecaParaDireita, time: offset + 46.212, returnPose: cabecaParaEsquerda))
        rockCabeca.insertStep(StepInTrack(step: StepBank.cabecaParaEsquerda, time: offset + 45.755, returnPose: cabecaParaDireita))
        rockCabeca.insertStep(StepInTrack(step: StepBank.cabecaParaDireita, time: offset + 47.255, returnPose: cabecaParaEsquerda))
        // 0:48 - 0:50
        // 8 - Abdução de ombro esquerdo (90º). Abdução de ombro direito (90º). Flexão e extensão de cotovelo direito. Flexão e extensão de cotovelo esquerdo
            // Braço direito
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 48.006))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 48.298, returnPose: cotoveloDireitoFlexionado))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.abducaoOmbroDireito60, time: offset + 48.298))
            // Braço esquerdo
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 49.049))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 49.340, returnPose: cotoveloEsquerdoFlexionado))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.abducaoOmbroEsquerdo60, time: offset + 49.340))
        // 0:50 - 0:51
        // 9 - Abdução de ombro (180º)
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.abducaoOmbroDireito120, time: offset + 50.800))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.abducaoOmbroEsquerdo120, time: offset + 50.800))
        // Mãos cruzam
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.maoDireitaCruza, time: offset + 51.342))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.maoEsquerdaCruza, time: offset + 51.342))
        // 0:52 - 1:08
        // 10 - Inclinação de tronco. (flexão de cotovelo)
            // Inclina para a direita e volta
        rockTronco.insertStep(StepInTrack(step: StepBank.troncoParaDireita, time: offset + 52.635))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 52.635))
        rockPernaEsquerda.insertStep(StepInTrack(step: StepBank.flexaoJoelhoEsquerdo, time: offset + 52.635, returnPose: joelhoEsquerdoExtendido))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 53.386))
        rockPernaDireita.insertStep(StepInTrack(step: StepBank.flexaoJoelhoDireito, time: offset + 53.553, returnPose: joelhoDireitoExtendido))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 53.678))
            // Inclina para a direita e volta
        rockTronco.insertStep(StepInTrack(step: StepBank.troncoParaDireita, time: offset + 54.721))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 54.721))
        rockPernaEsquerda.insertStep(StepInTrack(step: StepBank.flexaoJoelhoEsquerdo, time: offset + 54.721, returnPose: joelhoEsquerdoExtendido))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 55.388))
        rockPernaDireita.insertStep(StepInTrack(step: StepBank.flexaoJoelhoDireito, time: offset + 55.722, returnPose: joelhoDireitoExtendido))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 55.764))
            // Inclina para a direita e volta
        rockTronco.insertStep(StepInTrack(step: StepBank.troncoParaDireita, time: offset + 56.848))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 56.848))
        rockPernaEsquerda.insertStep(StepInTrack(step: StepBank.flexaoJoelhoEsquerdo, time: offset + 56.848, returnPose: joelhoEsquerdoExtendido))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 57.515))
        rockPernaDireita.insertStep(StepInTrack(step: StepBank.flexaoJoelhoDireito, time: offset + 57.849, returnPose: joelhoDireitoExtendido))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 58.016))
            // Inclina para a direita e volta
        rockTronco.insertStep(StepInTrack(step: StepBank.troncoParaDireita, time: offset + 58.892))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 58.892))
        rockPernaEsquerda.insertStep(StepInTrack(step: StepBank.flexaoJoelhoEsquerdo, time: offset + 58.933, returnPose: joelhoEsquerdoExtendido))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 59.559))
        rockPernaDireita.insertStep(StepInTrack(step: StepBank.flexaoJoelhoDireito, time: offset + 59.934, returnPose: joelhoDireitoExtendido))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 59.976))
        
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 60.560))
        
        // Inclina para a esquerda e volta
        rockTronco.insertStep(StepInTrack(step: StepBank.troncoParaEsquerda, time: offset + 61.102))
    rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 61.102))
    rockPernaDireita.insertStep(StepInTrack(step: StepBank.flexaoJoelhoDireito, time: offset + 61.102, returnPose: joelhoDireitoExtendido))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 61.978))
        rockPernaEsquerda.insertStep(StepInTrack(step: StepBank.flexaoJoelhoEsquerdo, time: offset + 62.062, returnPose: joelhoEsquerdoExtendido))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 62.145))
        // Inclina para a esquerda e volta
        rockTronco.insertStep(StepInTrack(step: StepBank.troncoParaEsquerda, time: offset + 63.146))
    rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 63.146))
    rockPernaDireita.insertStep(StepInTrack(step: StepBank.flexaoJoelhoDireito, time: offset + 63.146, returnPose: joelhoDireitoExtendido))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 63.855))
        rockPernaEsquerda.insertStep(StepInTrack(step: StepBank.flexaoJoelhoEsquerdo, time: offset + 64.105, returnPose: joelhoEsquerdoExtendido))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 64.230))
        // Inclina para a esquerda e volta
        rockTronco.insertStep(StepInTrack(step: StepBank.troncoParaEsquerda, time: offset + 65.231))
    rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 65.231))
    rockPernaDireita.insertStep(StepInTrack(step: StepBank.flexaoJoelhoDireito, time: offset + 65.231, returnPose: joelhoDireitoExtendido))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 65.899))
        rockPernaEsquerda.insertStep(StepInTrack(step: StepBank.flexaoJoelhoEsquerdo, time: offset + 66.232, returnPose: joelhoEsquerdoExtendido))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 66.316))
        // Inclina para a esquerda e volta
        rockTronco.insertStep(StepInTrack(step: StepBank.troncoParaEsquerda, time: offset + 67.317))
    rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 67.317))
    rockPernaDireita.insertStep(StepInTrack(step: StepBank.flexaoJoelhoDireito, time: offset + 67.317, returnPose: joelhoDireitoExtendido))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 68.068))
        rockPernaEsquerda.insertStep(StepInTrack(step: StepBank.flexaoJoelhoEsquerdo, time: offset + 68.318, returnPose: joelhoEsquerdoExtendido))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 68.401))
        
        // 1:09 - 1:16
        // 11 - Ombros alternados para trás
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.ombroDireitoParaFrente, time: offset + 69.027, returnPose: ombroEsquerdoParaFrente))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.ombroEsquerdoParaFrente, time: offset + 69.861, returnPose: ombroDireitoParaFrente))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.ombroDireitoParaFrente, time: offset + 70.904, returnPose: ombroEsquerdoParaFrente))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.ombroEsquerdoParaFrente, time: offset + 71.821, returnPose: ombroDireitoParaFrente))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.ombroDireitoParaFrente, time: offset + 72.989, returnPose: ombroEsquerdoParaFrente))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.ombroEsquerdoParaFrente, time: offset + 73.907, returnPose: ombroDireitoParaFrente))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.ombroDireitoParaFrente, time: offset + 75.158, returnPose: ombroEsquerdoParaFrente))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.ombroEsquerdoParaFrente, time: offset + 76.159, returnPose: ombroDireitoParaFrente))
        
        // 1:16 - 1:25
        // 12 - Ombros alternados para frente
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.ombroDireitoParaFrente, time: offset + 77.911, returnPose: ombroEsquerdoParaFrente))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.ombroEsquerdoParaFrente, time: offset + 79.162, returnPose: ombroDireitoParaFrente))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.ombroDireitoParaFrente, time: offset + 80.080, returnPose: ombroEsquerdoParaFrente))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.ombroEsquerdoParaFrente, time: offset + 81.122, returnPose: ombroDireitoParaFrente))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.ombroDireitoParaFrente, time: offset + 82.123, returnPose: ombroEsquerdoParaFrente))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.ombroEsquerdoParaFrente, time: offset + 83.291, returnPose: ombroDireitoParaFrente))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.ombroDireitoParaFrente, time: offset + 84.250, returnPose: ombroEsquerdoParaFrente))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.ombroEsquerdoParaFrente, time: offset + 85.376, returnPose: ombroDireitoParaFrente))
        
        // 1:26 - 1:32
        // 13 - Ombros para trás. Fecha a base e abre
        rockPernaEsquerda.insertStep(StepInTrack(step: StepBank.abreBase, time: offset + 88.296, returnPose: fechaBase))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.ombroEsquerdoParaFrente, time: offset + 88.838, returnPose: ombroDireitoParaFrente))
        
        rockPernaDireita.insertStep(StepInTrack(step: StepBank.abreBase, time: offset + 90.256, returnPose: fechaBase))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.ombroDireitoParaFrente, time: offset + 90.256, returnPose: ombroEsquerdoParaFrente))
        
        rockPernaEsquerda.insertStep(StepInTrack(step: StepBank.abreBase, time: offset + 92.425, returnPose: fechaBase))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.ombroEsquerdoParaFrente, time: offset + 92.425, returnPose: ombroDireitoParaFrente))
        
        // 6 - Abre base, flexão de cotovelos
            // Vai direito
            // Flexão cotovelo direito
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 94.344))
        // Abre a base
        rockPernaDireita.insertStep(StepInTrack(step: StepBank.abreBase, time: offset + 94.511))
        
        // extensão cotovelo direito
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 94.636, returnPose: cotoveloDireitoFlexionado))
            // Vai esquerdo
        // Flexão e extensão cotovelo esquerdo
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 95.345))
        // ergue pé esquerdo
        rockPernaEsquerda.insertStep(StepInTrack(step: StepBank.elevaPeEsquerdo, time: offset + 95.386))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 95.637, returnPose: cotoveloEsquerdoFlexionado))
        
        // 7 - Movimento com a cabeça
        rockCabeca.insertStep(StepInTrack(step: StepBank.cabecaParaEsquerda, time: offset + 96.262, returnPose: cabecaParaDireita))
        rockCabeca.insertStep(StepInTrack(step: StepBank.cabecaParaDireita, time: offset + 96.679, returnPose: cabecaParaEsquerda))
        rockCabeca.insertStep(StepInTrack(step: StepBank.cabecaParaEsquerda, time: offset + 97.222, returnPose: cabecaParaDireita))
        rockCabeca.insertStep(StepInTrack(step: StepBank.cabecaParaDireita, time: offset + 97.764, returnPose: cabecaParaEsquerda))
        
        // 8 - Abdução de ombro esquerdo (90º). Abdução de ombro direito (90º). Flexão e extensão de cotovelo direito. Flexão e extensão de cotovelo esquerdo
            // Braço direito
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 98.515))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 98.890, returnPose: cotoveloDireitoFlexionado))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.abducaoOmbroDireito60, time: offset + 98.890))
            // Braço esquerdo
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 99.599))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 99.808, returnPose: cotoveloEsquerdoFlexionado))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.abducaoOmbroEsquerdo60, time: offset + 99.808))
        
        // 9 - Abdução de ombro (180º)
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.abducaoOmbroDireito120, time: offset + 101.226))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.abducaoOmbroEsquerdo120, time: offset + 101.226))
        // Mãos cruzam
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.maoDireitaCruza, time: offset + 101.684))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.maoEsquerdaCruza, time: offset + 101.684))
        
        // 10 - Inclinação de tronco. (flexão de cotovelo)
            // Inclina para a direita e volta
        rockTronco.insertStep(StepInTrack(step: StepBank.troncoParaDireita, time: offset + 103.144))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 103.144))
        rockPernaEsquerda.insertStep(StepInTrack(step: StepBank.flexaoJoelhoEsquerdo, time: offset + 103.144, returnPose: joelhoEsquerdoExtendido))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 103.937))
        rockPernaDireita.insertStep(StepInTrack(step: StepBank.flexaoJoelhoDireito, time: offset + 104.145, returnPose: joelhoDireitoExtendido))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 104.145))
            // Inclina para a direita e volta
        rockTronco.insertStep(StepInTrack(step: StepBank.troncoParaDireita, time: offset + 105.188))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 105.188))
        rockPernaEsquerda.insertStep(StepInTrack(step: StepBank.flexaoJoelhoEsquerdo, time: offset + 105.188, returnPose: joelhoEsquerdoExtendido))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 105.980))
        rockPernaDireita.insertStep(StepInTrack(step: StepBank.flexaoJoelhoDireito, time: offset + 106.314, returnPose: joelhoDireitoExtendido))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 106.314))
            // Inclina para a direita e volta
        rockTronco.insertStep(StepInTrack(step: StepBank.troncoParaDireita, time: offset + 107.357))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 107.357))
        rockPernaEsquerda.insertStep(StepInTrack(step: StepBank.flexaoJoelhoEsquerdo, time: offset + 107.357, returnPose: joelhoEsquerdoExtendido))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 108.024))
        rockPernaDireita.insertStep(StepInTrack(step: StepBank.flexaoJoelhoDireito, time: offset + 108.316, returnPose: joelhoDireitoExtendido))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 108.316))
            // Inclina para a direita e volta
        rockTronco.insertStep(StepInTrack(step: StepBank.troncoParaDireita, time: offset + 109.484))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 109.484))
        rockPernaEsquerda.insertStep(StepInTrack(step: StepBank.flexaoJoelhoEsquerdo, time: offset + 109.484, returnPose: joelhoEsquerdoExtendido))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 110.110))
        rockPernaDireita.insertStep(StepInTrack(step: StepBank.flexaoJoelhoDireito, time: offset + 110.443, returnPose: joelhoDireitoExtendido))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 110.443))
        
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 111.111))
        
        // Inclina para a esquerda e volta
        rockTronco.insertStep(StepInTrack(step: StepBank.troncoParaEsquerda, time: offset + 111.611))
    rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 111.611))
    rockPernaDireita.insertStep(StepInTrack(step: StepBank.flexaoJoelhoDireito, time: offset + 111.611, returnPose: joelhoDireitoExtendido))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 112.320))
        rockPernaEsquerda.insertStep(StepInTrack(step: StepBank.flexaoJoelhoEsquerdo, time: offset + 112.529, returnPose: joelhoEsquerdoExtendido))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 112.529))
        // Inclina para a esquerda e volta
        rockTronco.insertStep(StepInTrack(step: StepBank.troncoParaEsquerda, time: offset + 113.655))
    rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 113.655))
    rockPernaDireita.insertStep(StepInTrack(step: StepBank.flexaoJoelhoDireito, time: offset + 113.655, returnPose: joelhoDireitoExtendido))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 114.405))
        rockPernaEsquerda.insertStep(StepInTrack(step: StepBank.flexaoJoelhoEsquerdo, time: offset + 114.614, returnPose: joelhoEsquerdoExtendido))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 114.614))
        // Inclina para a esquerda e volta
        rockTronco.insertStep(StepInTrack(step: StepBank.troncoParaEsquerda, time: offset + 115.740))
    rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 115.740))
    rockPernaDireita.insertStep(StepInTrack(step: StepBank.flexaoJoelhoDireito, time: offset + 115.740, returnPose: joelhoDireitoExtendido))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 116.407))
        rockPernaEsquerda.insertStep(StepInTrack(step: StepBank.flexaoJoelhoEsquerdo, time: offset + 116.699, returnPose: joelhoEsquerdoExtendido))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 116.699))
        // Inclina para a esquerda e volta
        rockTronco.insertStep(StepInTrack(step: StepBank.troncoParaEsquerda, time: offset + 117.867))
    rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 117.867))
    rockPernaDireita.insertStep(StepInTrack(step: StepBank.flexaoJoelhoDireito, time: offset + 117.867, returnPose: joelhoDireitoExtendido))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 118.451))
        rockPernaEsquerda.insertStep(StepInTrack(step: StepBank.flexaoJoelhoEsquerdo, time: offset + 118.827, returnPose: joelhoEsquerdoExtendido))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 118.827))
   
        
        // 1:59 - 2:07
        // 14 - Abdução de ombro (90). Abdução de ombro (180). Flexão de ombro (90). Abdução de ombro (90)
        // Vai direito
        // Flexão e extensão cotovelo direito
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 119.702))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 119.953, returnPose: cotoveloDireitoFlexionado))
        // abdução ombro direito
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.abducaoOmbroDireito60, time: offset + 119.953))
        // Vai esquerdo
    // Flexão e extensão cotovelo esquerdo
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 120.537))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 120.912, returnPose: cotoveloEsquerdoFlexionado))
        // abdução ombro esquerdo
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.abducaoOmbroEsquerdo60, time: offset + 120.912))
        // abdução total ombro direito
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.abducaoOmbroDireito120, time: offset + 121.996))
        // abdução total ombro esquerdo
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.abducaoOmbroEsquerdo120, time: offset + 122.914))
        // Braço direito para frente
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroDireito, time: offset + 124.124))
        // Braço esquerdo para frente
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo, time: offset + 125.125))
        // abdução ombro direito
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.abducaoOmbroDireito60, time: offset + 126.126))
        // abdução ombro esquerdo
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.abducaoOmbroEsquerdo60, time: offset + 127.085))
        
        // 2:08 - 2:15
        // 15 - Flexão lateral da cabeça
        // cabeça para direita e para esquerda
        rockCabeca.insertStep(StepInTrack(step: StepBank.cabecaParaDireita, time: offset + 128.378, returnPose: cabecaParaEsquerda))
        rockCabeca.insertStep(StepInTrack(step: StepBank.cabecaParaEsquerda, time: offset + 129.587, returnPose: cabecaParaDireita))
        rockCabeca.insertStep(StepInTrack(step: StepBank.cabecaParaDireita, time: offset + 130.547, returnPose: cabecaParaEsquerda))
        rockCabeca.insertStep(StepInTrack(step: StepBank.cabecaParaEsquerda, time: offset + 131.673, returnPose: cabecaParaDireita))
        rockCabeca.insertStep(StepInTrack(step: StepBank.cabecaParaDireita, time: offset + 132.674, returnPose: cabecaParaEsquerda))
        rockCabeca.insertStep(StepInTrack(step: StepBank.cabecaParaEsquerda,time: offset + 133.716, returnPose: cabecaParaDireita))
        rockCabeca.insertStep(StepInTrack(step: StepBank.cabecaParaDireita, time: offset + 134.843, returnPose: cabecaParaEsquerda))
        rockCabeca.insertStep(StepInTrack(step: StepBank.cabecaParaEsquerda,time: offset + 135.885, returnPose: cabecaParaDireita))
        
        // 14 - Abdução de ombro (90). Abdução de ombro (180). Flexão de ombro (90). Abdução de ombro (90)
        // Vai direito
        // Flexão e extensão cotovelo direito
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 136.427))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 136.719, returnPose: cotoveloDireitoFlexionado))
        // abdução ombro direito
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.abducaoOmbroDireito60, time: offset + 136.719))
        // Vai esquerdo
    // Flexão e extensão cotovelo esquerdo
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 137.345))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 137.720, returnPose: cotoveloEsquerdoFlexionado))
        // abdução ombro esquerdo
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.abducaoOmbroEsquerdo60, time: offset + 137.720))
        // abdução total ombro direito
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.abducaoOmbroDireito120, time: offset + 138.805))
        // abdução total ombro esquerdo
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.abducaoOmbroEsquerdo120, time: offset + 139.764))
        // Braço direito para frente
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroDireito, time: offset + 140.974))
        // Braço esquerdo para frente
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo, time: offset + 142.016))
        // abdução ombro direito
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.abducaoOmbroDireito60, time: offset + 142.934))
        // abdução ombro esquerdo
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.abducaoOmbroEsquerdo60, time: offset + 143.935))
        
        // 15 - Flexão lateral da cabeça
        // cabeça para direita e para esquerda
        rockCabeca.insertStep(StepInTrack(step: StepBank.cabecaParaDireita, time: offset + 145.311, returnPose: cabecaParaEsquerda))
        rockCabeca.insertStep(StepInTrack(step: StepBank.cabecaParaEsquerda, time: offset + 146.396, returnPose: cabecaParaDireita))
        rockCabeca.insertStep(StepInTrack(step: StepBank.cabecaParaDireita, time: offset + 147.397, returnPose: cabecaParaEsquerda))
        rockCabeca.insertStep(StepInTrack(step: StepBank.cabecaParaEsquerda, time: offset + 148.565, returnPose: cabecaParaDireita))
        rockCabeca.insertStep(StepInTrack(step: StepBank.cabecaParaDireita, time: offset + 149.566, returnPose: cabecaParaEsquerda))
        rockCabeca.insertStep(StepInTrack(step: StepBank.cabecaParaEsquerda,time: offset + 150.567, returnPose: cabecaParaDireita))
        rockCabeca.insertStep(StepInTrack(step: StepBank.cabecaParaDireita, time: offset + 151.651, returnPose: cabecaParaEsquerda))
        rockCabeca.insertStep(StepInTrack(step: StepBank.cabecaParaEsquerda,time: offset + 152.694, returnPose: cabecaParaDireita))
        
        // 13 - Ombros para trás. Fecha a base e abre
        rockPernaEsquerda.insertStep(StepInTrack(step: StepBank.abreBase, time: offset + 153.570, returnPose: fechaBase))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.ombroDireitoParaFrente, time: offset + 154.195, returnPose: ombroEsquerdoParaFrente))
        
        rockPernaDireita.insertStep(StepInTrack(step: StepBank.abreBase, time: offset + 155.530, returnPose: fechaBase))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.ombroEsquerdoParaFrente, time: offset + 155.697, returnPose: ombroDireitoParaFrente))
                
        rockPernaEsquerda.insertStep(StepInTrack(step: StepBank.abreBase, time: offset + 157.574, returnPose: fechaBase))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.ombroDireitoParaFrente, time: offset + 158.032, returnPose: ombroEsquerdoParaFrente))
        
        rockPernaDireita.insertStep(StepInTrack(step: StepBank.abreBase, time: offset + 159.784, returnPose: fechaBase))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.ombroEsquerdoParaFrente, time: offset + 159.909, returnPose: ombroDireitoParaFrente))
        
        rockPernaEsquerda.insertStep(StepInTrack(step: StepBank.abreBase, time: offset + 161.744, returnPose: fechaBase))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.ombroDireitoParaFrente, time: offset + 161.953, returnPose: ombroEsquerdoParaFrente))
        
        rockPernaDireita.insertStep(StepInTrack(step: StepBank.abreBase, time: offset + 163.913, returnPose: fechaBase))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.ombroEsquerdoParaFrente, time: offset + 164.122, returnPose: ombroDireitoParaFrente))
        
        rockPernaEsquerda.insertStep(StepInTrack(step: StepBank.abreBase, time: offset + 165.999, returnPose: fechaBase))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.ombroDireitoParaFrente, time: offset + 166.207, returnPose: ombroEsquerdoParaFrente))
        
        rockPernaDireita.insertStep(StepInTrack(step: StepBank.abreBase, time: offset + 168.168, returnPose: fechaBase))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.ombroEsquerdoParaFrente, time: offset + 168.168, returnPose: ombroDireitoParaFrente))
        
        // 10 - Inclinação de tronco. (flexão de cotovelo)
            // Inclina para a direita e volta
        rockTronco.insertStep(StepInTrack(step: StepBank.troncoParaDireita, time: offset + 170.461))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 170.461))
        rockPernaEsquerda.insertStep(StepInTrack(step: StepBank.flexaoJoelhoEsquerdo, time: offset + 170.461, returnPose: joelhoEsquerdoExtendido))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 171.212))
        rockPernaDireita.insertStep(StepInTrack(step: StepBank.flexaoJoelhoDireito, time: offset + 171.421, returnPose: joelhoDireitoExtendido))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 171.421))
            // Inclina para a direita e volta
        rockTronco.insertStep(StepInTrack(step: StepBank.troncoParaDireita, time: offset + 172.505))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 172.505))
        rockPernaEsquerda.insertStep(StepInTrack(step: StepBank.flexaoJoelhoEsquerdo, time: offset + 172.505, returnPose: joelhoEsquerdoExtendido))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 173.214))
        rockPernaDireita.insertStep(StepInTrack(step: StepBank.flexaoJoelhoDireito, time: offset + 173.548, returnPose: joelhoDireitoExtendido))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 173.548))
            // Inclina para a direita e volta
        rockTronco.insertStep(StepInTrack(step: StepBank.troncoParaDireita, time: offset + 174.674))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 174.674))
        rockPernaEsquerda.insertStep(StepInTrack(step: StepBank.flexaoJoelhoEsquerdo, time: offset + 174.674, returnPose: joelhoEsquerdoExtendido))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 175.383))
        rockPernaDireita.insertStep(StepInTrack(step: StepBank.flexaoJoelhoDireito, time: offset + 175.675, returnPose: joelhoDireitoExtendido))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 175.675))
            // Inclina para a direita e volta
        rockTronco.insertStep(StepInTrack(step: StepBank.troncoParaDireita, time: offset + 176.718))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 176.718))
        rockPernaEsquerda.insertStep(StepInTrack(step: StepBank.flexaoJoelhoEsquerdo, time: offset + 176.718, returnPose: joelhoEsquerdoExtendido))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 177.427))
        rockPernaDireita.insertStep(StepInTrack(step: StepBank.flexaoJoelhoDireito, time: offset + 177.760, returnPose: joelhoDireitoExtendido))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 177.760))
        
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 178.386))
        
        // Inclina para a esquerda e volta
        rockTronco.insertStep(StepInTrack(step: StepBank.troncoParaEsquerda, time: offset + 178.928))
    rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 178.928))
    rockPernaDireita.insertStep(StepInTrack(step: StepBank.flexaoJoelhoDireito, time: offset + 178.928, returnPose: joelhoDireitoExtendido))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 179.679))
        rockPernaEsquerda.insertStep(StepInTrack(step: StepBank.flexaoJoelhoEsquerdo, time: offset + 179.888, returnPose: joelhoEsquerdoExtendido))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 179.888))
        // Inclina para a esquerda e volta
        rockTronco.insertStep(StepInTrack(step: StepBank.troncoParaEsquerda, time: offset + 181.014))
    rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 181.014))
    rockPernaDireita.insertStep(StepInTrack(step: StepBank.flexaoJoelhoDireito, time: offset + 181.014, returnPose: joelhoDireitoExtendido))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 181.639))
        rockPernaEsquerda.insertStep(StepInTrack(step: StepBank.flexaoJoelhoEsquerdo, time: offset + 181.973, returnPose: joelhoEsquerdoExtendido))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 181.973))
        // Inclina para a esquerda e volta
        rockTronco.insertStep(StepInTrack(step: StepBank.troncoParaEsquerda, time: offset + 183.099))
    rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 183.099))
    rockPernaDireita.insertStep(StepInTrack(step: StepBank.flexaoJoelhoDireito, time: offset + 183.099, returnPose: joelhoDireitoExtendido))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 183.766))
        rockPernaEsquerda.insertStep(StepInTrack(step: StepBank.flexaoJoelhoEsquerdo, time: offset + 184.100, returnPose: joelhoEsquerdoExtendido))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 184.100))
        // Inclina para a esquerda e volta
        rockTronco.insertStep(StepInTrack(step: StepBank.troncoParaEsquerda, time: offset + 185.226))
    rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 185.226))
    rockPernaDireita.insertStep(StepInTrack(step: StepBank.flexaoJoelhoDireito, time: offset + 185.226, returnPose: joelhoDireitoExtendido))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 185.852))
        rockPernaEsquerda.insertStep(StepInTrack(step: StepBank.flexaoJoelhoEsquerdo, time: offset + 186.186, returnPose: joelhoEsquerdoExtendido))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 186.186))
        
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 186.811))
        
        // 10 - Inclinação de tronco. (flexão de cotovelo)
            // Inclina para a direita e volta
        rockTronco.insertStep(StepInTrack(step: StepBank.troncoParaDireita, time: offset + 187.312))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 187.312))
        rockPernaEsquerda.insertStep(StepInTrack(step: StepBank.flexaoJoelhoEsquerdo, time: offset + 187.312, returnPose: joelhoEsquerdoExtendido))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 188.021))
        rockPernaDireita.insertStep(StepInTrack(step: StepBank.flexaoJoelhoDireito, time: offset + 188.313, returnPose: joelhoDireitoExtendido))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 188.313))
            // Inclina para a direita e volta
        rockTronco.insertStep(StepInTrack(step: StepBank.troncoParaDireita, time: offset + 189.439))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 189.439))
        rockPernaEsquerda.insertStep(StepInTrack(step: StepBank.flexaoJoelhoEsquerdo, time: offset + 189.439, returnPose: joelhoEsquerdoExtendido))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 190.106))
        rockPernaDireita.insertStep(StepInTrack(step: StepBank.flexaoJoelhoDireito, time: offset + 190.440, returnPose: joelhoDireitoExtendido))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 190.440))
            // Inclina para a direita e volta
        rockTronco.insertStep(StepInTrack(step: StepBank.troncoParaDireita, time: offset + 191.482))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 191.482))
        rockPernaEsquerda.insertStep(StepInTrack(step: StepBank.flexaoJoelhoEsquerdo, time: offset + 191.482, returnPose: joelhoEsquerdoExtendido))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 192.233))
        rockPernaDireita.insertStep(StepInTrack(step: StepBank.flexaoJoelhoDireito, time: offset + 192.567, returnPose: joelhoDireitoExtendido))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 192.567))
            // Inclina para a direita e volta
        rockTronco.insertStep(StepInTrack(step: StepBank.troncoParaDireita, time: offset + 193.610))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 193.610))
        rockPernaEsquerda.insertStep(StepInTrack(step: StepBank.flexaoJoelhoEsquerdo, time: offset + 193.610, returnPose: joelhoEsquerdoExtendido))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 194.319))
        rockPernaDireita.insertStep(StepInTrack(step: StepBank.flexaoJoelhoDireito, time: offset + 194.611, returnPose: joelhoDireitoExtendido))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 194.611))
        
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 195.195))
        
        // Inclina para a esquerda e volta
        rockTronco.insertStep(StepInTrack(step: StepBank.troncoParaEsquerda, time: offset + 195.737))
    rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 195.737))
    rockPernaDireita.insertStep(StepInTrack(step: StepBank.flexaoJoelhoDireito, time: offset + 195.737, returnPose: joelhoDireitoExtendido))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 196.404))
        rockPernaEsquerda.insertStep(StepInTrack(step: StepBank.flexaoJoelhoEsquerdo, time: offset + 196.738, returnPose: joelhoEsquerdoExtendido))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 196.738))
        // Inclina para a esquerda e volta
        rockTronco.insertStep(StepInTrack(step: StepBank.troncoParaEsquerda, time: offset + 197.780))
    rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 197.780))
    rockPernaDireita.insertStep(StepInTrack(step: StepBank.flexaoJoelhoDireito, time: offset + 197.780, returnPose: joelhoDireitoExtendido))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 198.531))
        rockPernaEsquerda.insertStep(StepInTrack(step: StepBank.flexaoJoelhoEsquerdo, time: offset + 198.823, returnPose: joelhoEsquerdoExtendido))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 198.823))
        // Inclina para a esquerda e volta
        rockTronco.insertStep(StepInTrack(step: StepBank.troncoParaEsquerda, time: offset + 199.949))
    rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 199.949))
    rockPernaDireita.insertStep(StepInTrack(step: StepBank.flexaoJoelhoDireito, time: offset + 199.949, returnPose: joelhoDireitoExtendido))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 200.617))
        rockPernaEsquerda.insertStep(StepInTrack(step: StepBank.flexaoJoelhoEsquerdo, time: offset + 200.909, returnPose: joelhoEsquerdoExtendido))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 200.909))
        // Inclina para a esquerda e volta
        rockTronco.insertStep(StepInTrack(step: StepBank.troncoParaEsquerda, time: offset + 201.993))
    rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 201.993))
    rockPernaDireita.insertStep(StepInTrack(step: StepBank.flexaoJoelhoDireito, time: offset + 201.993, returnPose: joelhoDireitoExtendido))
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 202.660))
        rockPernaEsquerda.insertStep(StepInTrack(step: StepBank.flexaoJoelhoEsquerdo, time: offset + 202.994, returnPose: joelhoEsquerdoExtendido))
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 202.994))
        
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 203.620))
        
        // 2 - Rotação de tronco (ombro para frente) Braço cruza na frente e depois flexiona o cotovelo
            // Rotação para esquerda
        rockTronco.insertStep(StepInTrack(step: StepBank.rotacaoTroncoParaEsquerda, time: offset + 204.162, returnPose: troncoNaoRotacionado))
            // Flexão cotovelo direito
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 204.662, returnPose: cotoveloDireitoExtendido))
            // Rotação para direita
        rockTronco.insertStep(StepInTrack(step: StepBank.rotacaoTroncoParaDireita, time: offset + 205.246, returnPose: troncoNaoRotacionado))
        // Flexão cotovelo esquerdo
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 205.705, returnPose: cotoveloEsquerdoExtendido))
            // Rotação para esquerda
        rockTronco.insertStep(StepInTrack(step: StepBank.rotacaoTroncoParaEsquerda, time: offset + 206.247, returnPose: troncoNaoRotacionado))
            // Flexão cotovelo direito
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 206.748, returnPose: cotoveloDireitoExtendido))
            // Rotação para direita
        rockTronco.insertStep(StepInTrack(step: StepBank.rotacaoTroncoParaDireita, time: offset + 207.290, returnPose: troncoNaoRotacionado))
        // Flexão cotovelo esquerdo
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 207.749, returnPose: cotoveloEsquerdoExtendido))
            // Rotação para esquerda
        rockTronco.insertStep(StepInTrack(step: StepBank.rotacaoTroncoParaEsquerda, time: offset + 208.333, returnPose: troncoNaoRotacionado))
            // Flexão cotovelo direito
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 208.833, returnPose: cotoveloDireitoExtendido))
            // Rotação para direita
        rockTronco.insertStep(StepInTrack(step: StepBank.rotacaoTroncoParaDireita, time: offset + 209.334, returnPose: troncoNaoRotacionado))
        // Flexão cotovelo esquerdo
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 209.876, returnPose: cotoveloEsquerdoExtendido))
            // Rotação para esquerda
        rockTronco.insertStep(StepInTrack(step: StepBank.rotacaoTroncoParaEsquerda, time: offset + 210.418, returnPose: troncoNaoRotacionado))
            // Flexão cotovelo direito
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 210.919, returnPose: cotoveloDireitoExtendido))
            // Rotação para direita
        rockTronco.insertStep(StepInTrack(step: StepBank.rotacaoTroncoParaDireita, time: offset + 211.502, returnPose: troncoNaoRotacionado))
        // Flexão cotovelo esquerdo
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 212.003, returnPose: cotoveloEsquerdoExtendido))
        
        // 2 - Rotação de tronco (ombro para frente) Braço cruza na frente e depois flexiona o cotovelo
            // Rotação para esquerda
        rockTronco.insertStep(StepInTrack(step: StepBank.rotacaoTroncoParaEsquerda, time: offset + 212.629, returnPose: troncoNaoRotacionado))
            // Flexão cotovelo direito
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 213.129, returnPose: cotoveloDireitoExtendido))
            // Rotação para direita
        rockTronco.insertStep(StepInTrack(step: StepBank.rotacaoTroncoParaDireita, time: offset + 213.630, returnPose: troncoNaoRotacionado))
        // Flexão cotovelo esquerdo
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 214.130, returnPose: cotoveloEsquerdoExtendido))
            // Rotação para esquerda
        rockTronco.insertStep(StepInTrack(step: StepBank.rotacaoTroncoParaEsquerda, time: offset + 214.756, returnPose: troncoNaoRotacionado))
            // Flexão cotovelo direito
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 215.215, returnPose: cotoveloDireitoExtendido))
            // Rotação para direita
        rockTronco.insertStep(StepInTrack(step: StepBank.rotacaoTroncoParaDireita, time: offset + 215.757, returnPose: troncoNaoRotacionado))
        // Flexão cotovelo esquerdo
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 216.257, returnPose: cotoveloEsquerdoExtendido))
            // Rotação para esquerda
        rockTronco.insertStep(StepInTrack(step: StepBank.rotacaoTroncoParaEsquerda, time: offset + 216.883, returnPose: troncoNaoRotacionado))
            // Flexão cotovelo direito
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 217.342, returnPose: cotoveloDireitoExtendido))
            // Rotação para direita
        rockTronco.insertStep(StepInTrack(step: StepBank.rotacaoTroncoParaDireita, time: offset + 217.842, returnPose: troncoNaoRotacionado))
        // Flexão cotovelo esquerdo
        rockBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 218.343, returnPose: cotoveloEsquerdoExtendido))
            // Rotação para esquerda
        rockTronco.insertStep(StepInTrack(step: StepBank.rotacaoTroncoParaEsquerda, time: offset + 218.968, returnPose: troncoNaoRotacionado))
            // Flexão cotovelo direito
        rockBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 219.594, returnPose: cotoveloDireitoExtendido))
    }
    
    // STRONGER
    
    static var strongerPernaEsquerda = Track(member: .leftLeg, stepsInTrack: [])
    static var strongerPernaDireita = Track(member: .rightLeg, stepsInTrack: [])
    
    static var strongerBracoEsquerdo = Track(member: .leftArm, stepsInTrack: [])
    static var strongerBracoDireito = Track(member: .rightArm, stepsInTrack: [])
    
    static var strongerTronco = Track(member: .trunk, stepsInTrack: [])
    static var strongerCabeca = Track(member: .head, stepsInTrack: [])
    
    static func setupStronger() {
        
        let offset = -0.5
        
        strongerBracoDireito.clear()
        strongerBracoEsquerdo.clear()
        strongerPernaDireita.clear()
        strongerPernaEsquerda.clear()
        strongerTronco.clear()
        strongerCabeca.clear()
        
        // Posições de retorno
        let ombrosMesmaAltura = ReturnPoseBank.ombrosMesmaAltura
        let pesJuntos = ReturnPoseBank.pesJuntos
        let bracoDireitoBaixo = ReturnPoseBank.bracoDireitoBaixo
        let bracoEsquerdoBaixo = ReturnPoseBank.bracoEsquerdoBaixo
        let cotoveloDireitoAcimaDoEsquerdo = ReturnPoseBank.cotoveloDireitoAcimaDoEsquerdo
        let cotoveloEsquerdoAcimaDoDireito = ReturnPoseBank.cotoveloDireitoAcimaDoEsquerdo
        let extensaoCotoveloDireito = ReturnPoseBank.extensaoCotoveloDireito
        let extensaoCotoveloEsquerdo = ReturnPoseBank.extensaoCotoveloEsquerdo
        let flexaoCotoveloDireito = ReturnPoseBank.flexaoCotoveloDireito
        let flexaoCotoveloEsquerdo = ReturnPoseBank.flexaoCotoveloEsquerdo
        let troncoParaEsquerda = ReturnPoseBank.troncoParaEsquerda
        let troncoParaDireita = ReturnPoseBank.troncoParaDireita
        let antebracoDireitoParaCima = ReturnPoseBank.antebracoDireitoParaCima
        let antebracoEsquerdoParaCima = ReturnPoseBank.antebracoEsquerdoParaCima
        let antebracoDireitoParaLado = ReturnPoseBank.antebracoDireitoParaLado
        let antebracoEsquerdoParaLado = ReturnPoseBank.antebracoEsquerdoParaLado
     
        // Alterna ombros
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.elevaOmbroDireito, time: offset + 0.249, returnPose: ombrosMesmaAltura))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.elevaOmbroEsquerdo, time: offset + 1.116, returnPose: ombrosMesmaAltura))
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.elevaOmbroDireito, time: offset + 2.084, returnPose: ombrosMesmaAltura))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.elevaOmbroEsquerdo, time: offset + 3.053, returnPose: ombrosMesmaAltura))
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.elevaOmbroDireito, time: offset + 4.020, returnPose: ombrosMesmaAltura))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.elevaOmbroEsquerdo, time: offset + 4.954, returnPose: ombrosMesmaAltura))
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.elevaOmbroDireito, time: offset + 6.054, returnPose: ombrosMesmaAltura))

        // Abdução de ombro com flexão de cotovelo. Alterna entre direita e esquerda

        // Direita
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.abducaoOmbroDireito60, time: offset + 7.791, returnPose: bracoDireitoBaixo))
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 7.791, returnPose: extensaoCotoveloDireito))

        // Esquerda
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.abducaoOmbroEsquerdo60, time: offset + 8.558, returnPose: bracoEsquerdoBaixo))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 8.558, returnPose: extensaoCotoveloEsquerdo))
        
        // Inclina tronco para um lado e para o outro
        strongerTronco.insertStep(StepInTrack(step: StepBank.troncoParaDireita, time: offset + 7.891, returnPose: troncoParaEsquerda))
        strongerTronco.insertStep(StepInTrack(step: StepBank.troncoParaEsquerda, time: offset + 8.791, returnPose: troncoParaDireita))
        strongerTronco.insertStep(StepInTrack(step: StepBank.troncoParaDireita, time: offset + 9.759, returnPose: troncoParaEsquerda))
        strongerTronco.insertStep(StepInTrack(step: StepBank.troncoParaEsquerda, time: offset + 10.793, returnPose: troncoParaDireita))
        
        // Junta as mãos
        // Mão direita passa para o lado esquerdo
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.maoDireitaParaEsquerda, time: offset + 14.798))
        // Flexão de ombro
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroDireito, time: offset + 16.066))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo, time: offset + 16.066))
        // Mão esquerda passa para o lado direito
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.maoEsquerdaParaDireita, time: offset + 16.366))
        // Volta
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroDireito, time: offset + 19.203))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo, time: offset + 19.203))
        // Mão direita passa para o lado esquerdo
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.maoDireitaParaEsquerda, time: offset + 19.636))
        
        // Mãos acima da cabeça
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.maoDireitaAcimaCabecaCentro, time: offset + 23.639))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.maoEsquerdaAcimaCabecaCentro, time: offset + 23.639))
        
        // Braços esticados para frente
        // Flexão ombros
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroDireito, time: offset + 30.697))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo, time: offset + 30.697))
        
        // Primeira vez (para direita)
        // Extensão cotovelos
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 30.697, returnPose: flexaoCotoveloDireito))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 30.697, returnPose: flexaoCotoveloEsquerdo))
        
        // Passo para a frente
        strongerPernaDireita.insertStep(StepInTrack(step: StepBank.passoSentadoPeDireito, time: offset + 30.697, returnPose: pesJuntos))
        
        // Segunda vez (para esquerda)
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 32.565, returnPose: flexaoCotoveloDireito))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 32.565, returnPose: flexaoCotoveloEsquerdo))
        strongerPernaEsquerda.insertStep(StepInTrack(step: StepBank.passoSentadoPeEsquerdo, time: offset + 32.565, returnPose: pesJuntos))
        
        // Terceira vez (direita)
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 34.501, returnPose: flexaoCotoveloDireito))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 34.501, returnPose: flexaoCotoveloEsquerdo))
        strongerPernaDireita.insertStep(StepInTrack(step: StepBank.passoSentadoPeDireito, time: offset + 34.501, returnPose: pesJuntos))
        
        // Quarta vez (para esquerda)
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 36.469, returnPose: flexaoCotoveloDireito))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 36.469, returnPose: flexaoCotoveloEsquerdo))
        strongerPernaEsquerda.insertStep(StepInTrack(step: StepBank.passoSentadoPeEsquerdo, time: offset + 36.469, returnPose: pesJuntos))
        
        // Quinta vez (direita)
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 38.405, returnPose: flexaoCotoveloDireito))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 38.405, returnPose: flexaoCotoveloEsquerdo))
        strongerPernaDireita.insertStep(StepInTrack(step: StepBank.passoSentadoPeDireito, time: offset + 38.405, returnPose: pesJuntos))
        
        // Sexta vez (para esquerda)
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 40.340, returnPose: flexaoCotoveloDireito))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 40.340, returnPose: flexaoCotoveloEsquerdo))
        strongerPernaEsquerda.insertStep(StepInTrack(step: StepBank.passoSentadoPeEsquerdo, time: offset + 40.340, returnPose: pesJuntos))
        
        // Tronco para a direita, tronco para a frente e tronco para a esquerda
        // direita
        strongerTronco.insertStep(StepInTrack(step: StepBank.troncoParaDireita, time: offset + 43.243))
        strongerTronco.insertStep(StepInTrack(step: StepBank.troncoParaFrente, time: offset + 44.077))
        strongerTronco.insertStep(StepInTrack(step: StepBank.troncoParaEsquerda, time: offset + 45.078))
        strongerTronco.insertStep(StepInTrack(step: StepBank.troncoParaTras, time: offset + 46.379))
        
        // Flexão de ombro e cotovelo
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroDireito, time: offset + 48.148))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo, time: offset + 48.148))
        
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 48.148))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo, time: offset + 48.148))
        
        // Borboleta abre e fecha
        // abre
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.borboletaDireitoAberta, time: offset + 48.148))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.borboletaEsquerdoAberta, time: offset + 48.148))
        // fecha
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.borboletaDireitoFechada, time: offset + 49.049))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.borboletaEsquerdoFechada, time: offset + 49.049))
        // abre
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.borboletaDireitoAberta, time: offset + 49.983))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.borboletaEsquerdoAberta, time: offset + 49.983))
        // fecha
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.borboletaDireitoFechada, time: offset + 50.917))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.borboletaEsquerdoFechada, time: offset + 50.917))
        // abre
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.borboletaDireitoAberta, time: offset + 51.851))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.borboletaEsquerdoAberta, time: offset + 51.851))
        // fecha
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.borboletaDireitoFechada, time: offset + 52.852))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.borboletaEsquerdoFechada, time: offset + 52.852))
        // abre
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.borboletaDireitoAberta, time: offset + 53.720))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.borboletaEsquerdoAberta, time: offset + 53.720))
        
        // Flexão de ombro com fexão de cotovelo
        
        // direito extendido e esquerdo flexionado
        // direito extendido
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroDireito, time: offset + 54.821))
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 54.821, returnPose: flexaoCotoveloDireito))
        // esquerdo flexionado
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo, time: offset + 54.821))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 54.821, returnPose: extensaoCotoveloEsquerdo))
        
        // direito flexionado e esquerdo extendido
        // direito flexionado
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 55.789, returnPose: extensaoCotoveloDireito))
        // esquerdo extendido
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 55.789, returnPose: flexaoCotoveloEsquerdo))
        
        // direito extendido e esquerdo flexionado
        // direito extendido
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 56.756, returnPose: flexaoCotoveloDireito))
        // esquerdo flexionado
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 56.756, returnPose: extensaoCotoveloEsquerdo))
        
        // direito flexionado e esquerdo extendido
        // direito flexionado
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 57.791, returnPose: extensaoCotoveloDireito))
        // esquerdo extendido
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 57.791, returnPose: flexaoCotoveloEsquerdo))
        
        // direito extendido e esquerdo flexionado
        // direito extendido
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 58.725, returnPose: flexaoCotoveloDireito))
        // esquerdo flexionado
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 58.725, returnPose: extensaoCotoveloEsquerdo))
        
        // Agora mais rápido
        // direito flexionado e esquerdo extendido
        // direito flexionado
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroDireito, time: offset + 59.159))
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 59.159, returnPose: extensaoCotoveloDireito))
        // esquerdo extendido
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo, time: offset + 59.159))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 59.159, returnPose: flexaoCotoveloEsquerdo))
        
        // direito extendido e esquerdo flexionado
        // direito extendido
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 59.592, returnPose: flexaoCotoveloDireito))
        // esquerdo flexionado
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 59.592, returnPose: extensaoCotoveloEsquerdo))
        
        // Inclina o tronco para a frente e continua alternando os movimentos dos braços
        strongerTronco.insertStep(StepInTrack(step: StepBank.troncoParaFrente, time: offset + 60.026))
        
        // direito flexionado e esquerdo extendido
        // direito flexionado
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 60.059, returnPose: extensaoCotoveloDireito))
        // esquerdo extendido
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 60.059, returnPose: flexaoCotoveloEsquerdo))
        
        // direito extendido
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 60.527, returnPose: flexaoCotoveloDireito))
        // esquerdo flexionado
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 60.527, returnPose: extensaoCotoveloEsquerdo))
        
        // direito flexionado
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 61.061, returnPose: extensaoCotoveloDireito))
        // esquerdo extendido
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 61.061, returnPose: flexaoCotoveloEsquerdo))
        
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 61.561, returnPose: flexaoCotoveloDireito))
        // esquerdo flexionado
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 61.561, returnPose: extensaoCotoveloEsquerdo))
        
        // direito flexionado
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 62.028, returnPose: extensaoCotoveloDireito))
        // esquerdo extendido
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 62.028, returnPose: flexaoCotoveloEsquerdo))
        
        // Perna direita para frente
        strongerPernaDireita.insertStep(StepInTrack(step: StepBank.passoSentadoPeDireito, time: offset + 63.496))
        
        // Alternando os braços girando um em torno do outro
        // esquerdo acima
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.cotoveloEsquerdoAcimaDoDireito, time: offset + 63.797, returnPose: cotoveloDireitoAcimaDoEsquerdo))
        // direito acima
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.cotoveloDireitoAcimaDoEsquerdo, time: offset + 64.397, returnPose: cotoveloEsquerdoAcimaDoDireito))
        
        // esquerdo acima
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.cotoveloEsquerdoAcimaDoDireito, time: offset + 64.831, returnPose: cotoveloDireitoAcimaDoEsquerdo))
        // direito acima
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.cotoveloDireitoAcimaDoEsquerdo, time: offset + 65.331, returnPose: cotoveloEsquerdoAcimaDoDireito))
        
        // esquerdo acima
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.cotoveloEsquerdoAcimaDoDireito, time: offset + 65.799, returnPose: cotoveloDireitoAcimaDoEsquerdo))
        // direito acima
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.cotoveloDireitoAcimaDoEsquerdo, time: offset + 66.299, returnPose: cotoveloEsquerdoAcimaDoDireito))
        
        // esquerdo acima
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.cotoveloEsquerdoAcimaDoDireito, time: offset + 66.733, returnPose: cotoveloDireitoAcimaDoEsquerdo))
        // direito acima
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.cotoveloDireitoAcimaDoEsquerdo, time: offset + 67.167, returnPose: cotoveloEsquerdoAcimaDoDireito))
        
        // esquerdo acima
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.cotoveloEsquerdoAcimaDoDireito, time: offset + 67.734, returnPose: cotoveloDireitoAcimaDoEsquerdo))
        // direito acima
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.cotoveloDireitoAcimaDoEsquerdo, time: offset + 68.301, returnPose: cotoveloEsquerdoAcimaDoDireito))
        
        // esquerdo acima
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.cotoveloEsquerdoAcimaDoDireito, time: offset + 68.802, returnPose: cotoveloDireitoAcimaDoEsquerdo))
        // direito acima
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.cotoveloDireitoAcimaDoEsquerdo, time: offset + 69.436, returnPose: cotoveloEsquerdoAcimaDoDireito))
        
        // esquerdo acima
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.cotoveloEsquerdoAcimaDoDireito, time: offset + 69.936, returnPose: cotoveloDireitoAcimaDoEsquerdo))
        // direito acima
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.cotoveloDireitoAcimaDoEsquerdo, time: offset + 70.637, returnPose: cotoveloEsquerdoAcimaDoDireito))
        
        // esquerdo acima
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.cotoveloEsquerdoAcimaDoDireito, time: offset + 71.037, returnPose: cotoveloDireitoAcimaDoEsquerdo))
        // direito acima
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.cotoveloDireitoAcimaDoEsquerdo, time: offset + 71.704, returnPose: cotoveloEsquerdoAcimaDoDireito))
        
        // Perna esquerda para frente
        strongerPernaEsquerda.insertStep(StepInTrack(step: StepBank.passoSentadoPeEsquerdo, time: offset + 71.337))
        
        // esquerdo acima
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.cotoveloEsquerdoAcimaDoDireito, time: offset + 72.472, returnPose: cotoveloDireitoAcimaDoEsquerdo))
        // direito acima
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.cotoveloDireitoAcimaDoEsquerdo, time: offset + 72.739, returnPose: cotoveloEsquerdoAcimaDoDireito))
        
        // esquerdo acima
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.cotoveloEsquerdoAcimaDoDireito, time: offset + 73.173, returnPose: cotoveloDireitoAcimaDoEsquerdo))
        // direito acima
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.cotoveloDireitoAcimaDoEsquerdo, time: offset + 73.473, returnPose: cotoveloEsquerdoAcimaDoDireito))
        
        // esquerdo acima
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.cotoveloEsquerdoAcimaDoDireito, time: offset + 74.174, returnPose: cotoveloDireitoAcimaDoEsquerdo))
        // direito acima
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.cotoveloDireitoAcimaDoEsquerdo, time: offset + 74.874, returnPose: cotoveloEsquerdoAcimaDoDireito))
        
        // esquerdo acima
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.cotoveloEsquerdoAcimaDoDireito, time: offset + 75.542, returnPose: cotoveloDireitoAcimaDoEsquerdo))
        // direito acima
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.cotoveloDireitoAcimaDoEsquerdo, time: offset + 75.975, returnPose: cotoveloEsquerdoAcimaDoDireito))
        
        // esquerdo acima
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.cotoveloEsquerdoAcimaDoDireito, time: offset + 76.609, returnPose: cotoveloDireitoAcimaDoEsquerdo))
        // direito acima
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.cotoveloDireitoAcimaDoEsquerdo, time: offset + 77.143, returnPose: cotoveloEsquerdoAcimaDoDireito))
        
        // esquerdo acima
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.cotoveloEsquerdoAcimaDoDireito, time: offset + 77.677, returnPose: cotoveloDireitoAcimaDoEsquerdo))
        // direito acima
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.cotoveloDireitoAcimaDoEsquerdo, time: offset + 78.111, returnPose: cotoveloEsquerdoAcimaDoDireito))
        
        
        // Cotovelos em 90º antebraço alternando para cima e para o lado
        // direito para cima e esquerdo para lado
        // direito para cima
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroDireito, time: offset + 79.412))
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 79.412))
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.antebracoDireitoParaCima, time: offset + 79.412, returnPose: antebracoDireitoParaLado))
        
        // esquerdo para lado
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo, time: offset + 79.412))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 79.412))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.antebracoEsquerdoParaLado, time: offset + 79.412, returnPose: antebracoEsquerdoParaCima))
        
        // direito para o lado e esquerdo para cima
        // direito para o lado
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.antebracoDireitoParaLado, time: offset + 80.346, returnPose: antebracoDireitoParaCima))
        // esquerdo para cima
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.antebracoEsquerdoParaCima, time: offset + 80.346, returnPose: antebracoEsquerdoParaLado))
        
        // direito para o cima e esquerdo para lado
        // direito para o cima
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.antebracoDireitoParaCima, time: offset + 81.247, returnPose: antebracoDireitoParaLado))
        // esquerdo para lado
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.antebracoEsquerdoParaLado, time: offset + 81.247, returnPose: antebracoEsquerdoParaCima))
        
        // direito para o lado e esquerdo para cima
        // direito para o lado
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.antebracoDireitoParaLado, time: offset + 82.282, returnPose: antebracoDireitoParaCima))
        // esquerdo para cima
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.antebracoEsquerdoParaCima, time: offset + 82.282, returnPose: antebracoEsquerdoParaLado))
        
        // cotovelos extendidos
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 84.284))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 84.284))
        
        // alterna cotovelos acima e abaixo
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.cotoveloDireitoAcimaDoEsquerdo, time: offset + 85.351, returnPose: cotoveloEsquerdoAcimaDoDireito))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.cotoveloEsquerdoAcimaDoDireito, time: offset + 85.618, returnPose: cotoveloDireitoAcimaDoEsquerdo))
        
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.cotoveloDireitoAcimaDoEsquerdo, time: offset + 85.952, returnPose: cotoveloEsquerdoAcimaDoDireito))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.cotoveloEsquerdoAcimaDoDireito, time: offset + 86.252, returnPose: cotoveloDireitoAcimaDoEsquerdo))
        
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.cotoveloDireitoAcimaDoEsquerdo, time: offset + 86.586, returnPose: cotoveloEsquerdoAcimaDoDireito))
        
        // Cotovelos em 90º antebraço alternando para cima e para o lado
        // direito para cima e esquerdo para lado
        // direito para cima
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroDireito, time: offset + 87.287))
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 87.287))
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.antebracoDireitoParaCima, time: offset + 87.287, returnPose: antebracoDireitoParaLado))
        
        // esquerdo para lado
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo, time: offset + 87.287))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 87.287))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.antebracoEsquerdoParaLado, time: offset + 87.287, returnPose: antebracoEsquerdoParaCima))
        
        // direito para o lado e esquerdo para cima
        // direito para o lado
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.antebracoDireitoParaLado, time: offset + 88.254, returnPose: antebracoDireitoParaCima))
        // esquerdo para cima
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.antebracoEsquerdoParaCima, time: offset + 88.254, returnPose: antebracoEsquerdoParaLado))
        
        // direito para o cima e esquerdo para lado
        // direito para o cima
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.antebracoDireitoParaCima, time: offset + 89.022, returnPose: antebracoDireitoParaLado))
        // esquerdo para lado
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.antebracoEsquerdoParaLado, time: offset + 89.022, returnPose: antebracoEsquerdoParaCima))
        
        // direito para o lado e esquerdo para cima
        // direito para o lado
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.antebracoDireitoParaLado, time: offset + 90.056, returnPose: antebracoDireitoParaCima))
        // esquerdo para cima
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.antebracoEsquerdoParaCima, time: offset + 90.056, returnPose: antebracoEsquerdoParaLado))
        
        // cotovelos extendidos
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 92.492))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 92.492))
        
        // alterna cotovelos acima e abaixo
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.cotoveloDireitoAcimaDoEsquerdo, time: offset + 93.026, returnPose: cotoveloEsquerdoAcimaDoDireito))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.cotoveloEsquerdoAcimaDoDireito, time: offset + 93.293, returnPose: cotoveloDireitoAcimaDoEsquerdo))
        
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.cotoveloDireitoAcimaDoEsquerdo, time: offset + 93.626, returnPose: cotoveloEsquerdoAcimaDoDireito))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.cotoveloEsquerdoAcimaDoDireito, time: offset + 93.893, returnPose: cotoveloDireitoAcimaDoEsquerdo))
        
        // Repete movimentos dos 30s
        
        // Braços esticados para frente
        // Flexão ombros
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroDireito, time: offset + 94.627))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo, time: offset + 94.627))
        
        // Primeira vez (para direita)
        // Extensão cotovelos
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 94.627, returnPose: flexaoCotoveloDireito))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 94.627, returnPose: flexaoCotoveloEsquerdo))
        
        // Passo para a frente
        strongerPernaDireita.insertStep(StepInTrack(step: StepBank.passoSentadoPeDireito, time: offset + 94.627, returnPose: pesJuntos))
        
        // Segunda vez (para esquerda)
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 96.429, returnPose: flexaoCotoveloDireito))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 96.429, returnPose: flexaoCotoveloEsquerdo))
        strongerPernaEsquerda.insertStep(StepInTrack(step: StepBank.passoSentadoPeEsquerdo, time: offset + 96.429, returnPose: pesJuntos))
        
        // Terceira vez (direita)
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 98.398, returnPose: flexaoCotoveloDireito))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 98.398, returnPose: flexaoCotoveloEsquerdo))
        strongerPernaDireita.insertStep(StepInTrack(step: StepBank.passoSentadoPeDireito, time: offset + 98.398, returnPose: pesJuntos))
        
        // Quarta vez (para esquerda)
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 100.300, returnPose: flexaoCotoveloDireito))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 100.300, returnPose: flexaoCotoveloEsquerdo))
        strongerPernaEsquerda.insertStep(StepInTrack(step: StepBank.passoSentadoPeEsquerdo, time: offset + 100.300, returnPose: pesJuntos))
        
        // Quinta vez (direita)
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 102.235, returnPose: flexaoCotoveloDireito))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 102.235, returnPose: flexaoCotoveloEsquerdo))
        strongerPernaDireita.insertStep(StepInTrack(step: StepBank.passoSentadoPeDireito, time: offset + 102.235, returnPose: pesJuntos))
        
        // Sexta vez (para esquerda)
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 104.237, returnPose: flexaoCotoveloDireito))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 104.237, returnPose: flexaoCotoveloEsquerdo))
        strongerPernaEsquerda.insertStep(StepInTrack(step: StepBank.passoSentadoPeEsquerdo, time: offset + 104.237, returnPose: pesJuntos))
        
        // Mesmo movimento dos 40s
        
        // Tronco para a direita, tronco para a frente e tronco para a esquerda
        // direita
        strongerTronco.insertStep(StepInTrack(step: StepBank.troncoParaTras, time: offset + 106.005))
        strongerTronco.insertStep(StepInTrack(step: StepBank.troncoParaDireita, time: offset + 106.773))
        strongerTronco.insertStep(StepInTrack(step: StepBank.troncoParaFrente, time: offset + 107.707))
        strongerTronco.insertStep(StepInTrack(step: StepBank.troncoParaEsquerda, time: offset + 108.575))
        strongerTronco.insertStep(StepInTrack(step: StepBank.troncoParaTras, time: offset + 110.276))
        
        // Mesmo movimento dos 48s
        
        // Flexão de ombro e cotovelo
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroDireito, time: offset + 112.345))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo, time: offset + 112.345))
        
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 112.345))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo, time: offset + 112.345))
        
        // Borboleta abre e fecha
        // abre
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.borboletaDireitoAberta, time: offset + 112.345))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.borboletaEsquerdoAberta, time: offset + 112.345))
        // fecha
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.borboletaDireitoFechada, time: offset + 112.912))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.borboletaEsquerdoFechada, time: offset + 112.912))
        // abre
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.borboletaDireitoAberta, time: offset + 113.847))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.borboletaEsquerdoAberta, time: offset + 113.847))
        // fecha
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.borboletaDireitoFechada, time: offset + 114.848))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.borboletaEsquerdoFechada, time: offset + 114.848))
        // abre
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.borboletaDireitoAberta, time: offset + 115.815))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.borboletaEsquerdoAberta, time: offset + 115.815))
        // fecha
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.borboletaDireitoFechada, time: offset + 116.783))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.borboletaEsquerdoFechada, time: offset + 116.783))
        // abre
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.borboletaDireitoAberta, time: offset + 117.617))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.borboletaEsquerdoAberta, time: offset + 117.617))
        
        // Mesmo movimento dos 54s
        
        // Flexão de ombro com fexão de cotovelo
        
        // direito extendido e esquerdo flexionado
        // direito extendido
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroDireito, time: offset + 118.718))
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 118.718, returnPose: flexaoCotoveloDireito))
        // esquerdo flexionado
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo, time: offset + 118.718))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 118.718, returnPose: extensaoCotoveloEsquerdo))
        
        // direito flexionado e esquerdo extendido
        // direito flexionado
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 119.719, returnPose: extensaoCotoveloDireito))
        // esquerdo extendido
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 119.719, returnPose: flexaoCotoveloEsquerdo))
        
        // direito extendido e esquerdo flexionado
        // direito extendido
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 120.620, returnPose: flexaoCotoveloDireito))
        // esquerdo flexionado
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 120.620, returnPose: extensaoCotoveloEsquerdo))
        
        // direito flexionado e esquerdo extendido
        // direito flexionado
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 121.688, returnPose: extensaoCotoveloDireito))
        // esquerdo extendido
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 121.688, returnPose: flexaoCotoveloEsquerdo))
        
        // direito extendido e esquerdo flexionado
        // direito extendido
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 122.589, returnPose: flexaoCotoveloDireito))
        // esquerdo flexionado
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 122.589, returnPose: extensaoCotoveloEsquerdo))
        
        // Agora mais rápido
        // direito flexionado e esquerdo extendido
        // direito flexionado
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroDireito, time: offset + 123.022))
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 123.022, returnPose: extensaoCotoveloDireito))
        // esquerdo extendido
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo, time: offset + 123.022))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 123.022, returnPose: flexaoCotoveloEsquerdo))
        
        // direito extendido e esquerdo flexionado
        // direito extendido
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 123.490, returnPose: flexaoCotoveloDireito))
        // esquerdo flexionado
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 123.490, returnPose: extensaoCotoveloEsquerdo))
        
        // Inclina o tronco para a frente e continua alternando os movimentos dos braços
        strongerTronco.insertStep(StepInTrack(step: StepBank.troncoParaFrente, time: offset + 123.957))
        
        // direito flexionado e esquerdo extendido
        // direito flexionado
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 123.957, returnPose: extensaoCotoveloDireito))
        // esquerdo extendido
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 123.957, returnPose: flexaoCotoveloEsquerdo))
        
        // direito extendido
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 124.457, returnPose: flexaoCotoveloDireito))
        // esquerdo flexionado
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 124.457, returnPose: extensaoCotoveloEsquerdo))
        
        // direito flexionado
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 124.958, returnPose: extensaoCotoveloDireito))
        // esquerdo extendido
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 124.958, returnPose: flexaoCotoveloEsquerdo))
        
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 125.458, returnPose: flexaoCotoveloDireito))
        // esquerdo flexionado
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 125.458, returnPose: extensaoCotoveloEsquerdo))
        
        // direito flexionado
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 125.959, returnPose: extensaoCotoveloDireito))
        // esquerdo extendido
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 125.959, returnPose: flexaoCotoveloEsquerdo))
        
        
        // Flexão de ombro e cotovelo
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroDireito, time: offset + 128.428))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo, time: offset + 128.428))
        
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 128.428))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo, time: offset + 128.428))
        
        // Braços para cima
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroDireito120, time: offset + 129.028))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo120, time: offset + 129.028))
        
        // Flexão de ombro e cotovelo
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroDireito, time: offset + 136.136))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo, time: offset + 136.136))
        
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 136.136))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo, time: offset + 136.136))
                                        
        // Braços para cima
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroDireito120, time: offset + 137.070))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo120, time: offset + 137.070))
        
        // Alterna ombros
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.elevaOmbroEsquerdo, time: offset + 138.538, returnPose: ombrosMesmaAltura))
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.elevaOmbroDireito, time: offset + 139.005, returnPose: ombrosMesmaAltura))
        
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.elevaOmbroEsquerdo, time: offset + 139.539, returnPose: ombrosMesmaAltura))
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.elevaOmbroDireito, time: offset + 140.006, returnPose: ombrosMesmaAltura))
        
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.elevaOmbroEsquerdo, time: offset + 140.540, returnPose: ombrosMesmaAltura))
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.elevaOmbroDireito, time: offset + 141.040, returnPose: ombrosMesmaAltura))
        
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.elevaOmbroEsquerdo, time: offset + 141.508, returnPose: ombrosMesmaAltura))
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.elevaOmbroDireito, time: offset + 141.975, returnPose: ombrosMesmaAltura))
        
        
        // Flexão de ombro e cotovelo
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroDireito, time: offset + 143.810))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo, time: offset + 143.810))
        
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 143.810))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo, time: offset + 143.810))
        
        // Braços para cima
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroDireito120, time: offset + 144.677))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo120, time: offset + 144.677))
        
        // Flexão de ombro e cotovelo
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroDireito, time: offset + 151.384))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo, time: offset + 151.384))
        
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 151.384))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo, time: offset + 151.384))
        
        // Braços para cima
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroDireito120, time: offset + 152.352))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo120, time: offset + 152.352))
        
        // Alterna ombros
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.elevaOmbroDireito, time: offset + 154.287, returnPose: ombrosMesmaAltura))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.elevaOmbroEsquerdo, time: offset + 156.089, returnPose: ombrosMesmaAltura))
        
        // Alterna ombros
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.elevaOmbroDireito, time: offset + 154.287, returnPose: ombrosMesmaAltura))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.elevaOmbroEsquerdo, time: offset + 156.089, returnPose: ombrosMesmaAltura))
                
        // Flexão de ombro e cotovelo
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroDireito, time: offset + 159.159))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo, time: offset + 159.159))
        
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 159.159))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo, time: offset + 159.159))
        
        // Braços para cima
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroDireito120, time: offset + 160.026))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo120, time: offset + 160.026))
        
        // Cabeça para a direita e esquerda
        strongerCabeca.insertStep(StepInTrack(step: StepBank.cabecaParaDireita, time: offset + 162.362))
        strongerCabeca.insertStep(StepInTrack(step: StepBank.cabecaParaEsquerda, time: offset + 163.663))
        
        // Flexão de ombro e cotovelo
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroDireito, time: offset + 166.833))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo, time: offset + 166.833))
        
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 166.833))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo, time: offset + 166.833))
        
        // Braços para cima
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroDireito120, time: offset + 167.734))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo120, time: offset + 167.734))
        
        // Cabeça para a esquerda e direita
        strongerCabeca.insertStep(StepInTrack(step: StepBank.cabecaParaEsquerda, time: offset + 170.670))
        strongerCabeca.insertStep(StepInTrack(step: StepBank.cabecaParaDireita, time: offset + 171.638))
        
        // Flexão de ombro e cotovelo
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroDireito, time: offset + 174.374))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo, time: offset + 174.374))
        
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 174.374))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo, time: offset + 174.374))
        
        // Borboleta abre e fecha
        // fecha
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.borboletaDireitoFechada, time: offset + 175.208))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.borboletaEsquerdoFechada, time: offset + 175.208))
        // abre
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.borboletaDireitoAberta, time: offset + 175.708))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.borboletaEsquerdoAberta, time: offset + 175.708))
        // fecha
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.borboletaDireitoFechada, time: offset + 176.776))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.borboletaEsquerdoFechada, time: offset + 176.776))
        // abre
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.borboletaDireitoAberta, time: offset + 177.577))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.borboletaEsquerdoAberta, time: offset + 177.577))
        // fecha
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.borboletaDireitoFechada, time: offset + 178.745))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.borboletaEsquerdoFechada, time: offset + 178.745))
        // abre
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.borboletaDireitoAberta, time: offset + 179.612))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.borboletaEsquerdoAberta, time: offset + 179.612))
        
        // Flexão de ombro com fexão de cotovelo
        
        // direito extendido e esquerdo flexionado
        // direito extendido
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroDireito, time: offset + 180.713))
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 180.713, returnPose: flexaoCotoveloDireito))
        // esquerdo flexionado
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo, time: offset + 180.713))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 180.713, returnPose: extensaoCotoveloEsquerdo))
        
        // direito flexionado e esquerdo extendido
        // direito flexionado
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 181.681, returnPose: extensaoCotoveloDireito))
        // esquerdo extendido
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 181.681, returnPose: flexaoCotoveloEsquerdo))
        
        // direito extendido e esquerdo flexionado
        // direito extendido
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 182.649, returnPose: flexaoCotoveloDireito))
        // esquerdo flexionado
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 182.649, returnPose: extensaoCotoveloEsquerdo))
        
        // direito flexionado e esquerdo extendido
        // direito flexionado
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 183.683, returnPose: extensaoCotoveloDireito))
        // esquerdo extendido
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 183.683, returnPose: flexaoCotoveloEsquerdo))
        
        // direito extendido e esquerdo flexionado
        // direito extendido
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 184.551, returnPose: flexaoCotoveloDireito))
        // esquerdo flexionado
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 184.551, returnPose: extensaoCotoveloEsquerdo))
        
        // Agora mais rápido
        // direito flexionado e esquerdo extendido
        // direito flexionado
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroDireito, time: offset + 184.984))
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 184.984, returnPose: extensaoCotoveloDireito))
        // esquerdo extendido
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo, time: offset + 184.984))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 184.984, returnPose: flexaoCotoveloEsquerdo))
        
        // direito extendido e esquerdo flexionado
        // direito extendido
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 185.418, returnPose: flexaoCotoveloDireito))
        // esquerdo flexionado
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 185.418, returnPose: extensaoCotoveloEsquerdo))
        
        // Inclina o tronco para a frente e continua alternando os movimentos dos braços
        strongerTronco.insertStep(StepInTrack(step: StepBank.troncoParaFrente, time: offset + 185.919))
        
        // direito flexionado e esquerdo extendido
        // direito flexionado
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 185.919, returnPose: extensaoCotoveloDireito))
        // esquerdo extendido
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 185.919, returnPose: flexaoCotoveloEsquerdo))
        
        // direito extendido
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 186.418, returnPose: flexaoCotoveloDireito))
        // esquerdo flexionado
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 186.418, returnPose: extensaoCotoveloEsquerdo))
        
        // direito flexionado
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 186.920, returnPose: extensaoCotoveloDireito))
        // esquerdo extendido
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 186.920, returnPose: flexaoCotoveloEsquerdo))
        
        // direito extendido
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 187.353, returnPose: flexaoCotoveloDireito))
        // esquerdo flexionado
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 187.353, returnPose: extensaoCotoveloEsquerdo))
        
        // direito flexionado
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 187.854, returnPose: extensaoCotoveloDireito))
        // esquerdo extendido
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 187.854, returnPose: flexaoCotoveloEsquerdo))
        
        // direito extendido
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 188.321, returnPose: flexaoCotoveloDireito))
        // esquerdo flexionado
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 188.321, returnPose: extensaoCotoveloEsquerdo))
        
        // Flexão de ombro e cotovelo
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroDireito, time: offset + 189.722))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo, time: offset + 189.722))
        
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 189.722))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo, time: offset + 189.722))
        
        // Borboleta abre e fecha
        // fecha
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.borboletaDireitoFechada, time: offset + 190.423))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.borboletaEsquerdoFechada, time: offset + 190.423))
        // abre
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.borboletaDireitoAberta, time: offset + 191.157))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.borboletaEsquerdoAberta, time: offset + 191.157))
        // fecha
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.borboletaDireitoFechada, time: offset + 192.225))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.borboletaEsquerdoFechada, time: offset + 192.225))
        // abre
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.borboletaDireitoAberta, time: offset + 193.026))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.borboletaEsquerdoAberta, time: offset + 193.026))
        // fecha
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.borboletaDireitoFechada, time: offset + 194.060))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.borboletaEsquerdoFechada, time: offset + 194.060))
        // abre
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.borboletaDireitoAberta, time: offset + 194.894))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.borboletaEsquerdoAberta, time: offset + 194.894))
        
        // Flexão de ombro com fexão de cotovelo
        
        // direito extendido e esquerdo flexionado
        // direito extendido
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroDireito, time: offset + 196.095))
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 196.095, returnPose: flexaoCotoveloDireito))
        // esquerdo flexionado
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo, time: offset + 196.095))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 196.095, returnPose: extensaoCotoveloEsquerdo))
        
        // direito flexionado e esquerdo extendido
        // direito flexionado
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 197.030, returnPose: extensaoCotoveloDireito))
        // esquerdo extendido
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 197.030, returnPose: flexaoCotoveloEsquerdo))
        
        // direito extendido e esquerdo flexionado
        // direito extendido
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 198.031, returnPose: flexaoCotoveloDireito))
        // esquerdo flexionado
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 198.031, returnPose: extensaoCotoveloEsquerdo))
        
        // direito flexionado e esquerdo extendido
        // direito flexionado
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 199.098, returnPose: extensaoCotoveloDireito))
        // esquerdo extendido
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 199.098, returnPose: flexaoCotoveloEsquerdo))
        
        // direito extendido e esquerdo flexionado
        // direito extendido
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 199.966, returnPose: flexaoCotoveloDireito))
        // esquerdo flexionado
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 199.966, returnPose: extensaoCotoveloEsquerdo))
        
        // Agora mais rápido
        // direito flexionado e esquerdo extendido
        // direito flexionado
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroDireito, time: offset + 200.433))
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 200.433, returnPose: extensaoCotoveloDireito))
        // esquerdo extendido
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo, time: offset + 200.433))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 200.433, returnPose: flexaoCotoveloEsquerdo))
        
        // direito extendido e esquerdo flexionado
        // direito extendido
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 200.934, returnPose: flexaoCotoveloDireito))
        // esquerdo flexionado
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 200.934, returnPose: extensaoCotoveloEsquerdo))
        
        // Inclina o tronco para a frente e continua alternando os movimentos dos braços
        strongerTronco.insertStep(StepInTrack(step: StepBank.troncoParaFrente, time: offset + 201.367))
        
        // direito flexionado e esquerdo extendido
        // direito flexionado
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 201.367, returnPose: extensaoCotoveloDireito))
        // esquerdo extendido
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 201.367, returnPose: flexaoCotoveloEsquerdo))
        
        // direito extendido
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 201.868, returnPose: flexaoCotoveloDireito))
        // esquerdo flexionado
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 201.868, returnPose: extensaoCotoveloEsquerdo))
        
        // direito flexionado
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 202.402, returnPose: extensaoCotoveloDireito))
        // esquerdo extendido
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 202.402, returnPose: flexaoCotoveloEsquerdo))
        
        // direito extendido
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 202.936, returnPose: flexaoCotoveloDireito))
        // esquerdo flexionado
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo90, time: offset + 202.936, returnPose: extensaoCotoveloEsquerdo))
        
        // direito flexionado
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito90, time: offset + 203.436, returnPose: extensaoCotoveloDireito))
        // esquerdo extendido
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 203.436, returnPose: flexaoCotoveloEsquerdo))
        
        
        // Passo para frente pé direito
        strongerPernaDireita.insertStep(StepInTrack(step: StepBank.passoSentadoPeDireito, time: offset + 204.904))
        
        // Mão esquerda para a direita
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.maoEsquerdaParaDireita, time: offset + 205.271))
        
        // Flexão dos ombros e extensão dos cotovelos
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroDireito, time: offset + 205.638))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo, time: offset + 205.638))
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 205.638))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 205.638))
        
        // Passo para frente pé esquerdo
        strongerPernaEsquerda.insertStep(StepInTrack(step: StepBank.passoSentadoPeEsquerdo, time: offset + 212.545))
        
        // Mão direita para a esquerda
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.maoDireitaParaEsquerda, time: offset + 212.545))
        
        // Flexão dos ombros e extensão dos cotovelos
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroDireito, time: offset + 212.545, returnPose: bracoDireitoBaixo))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo, time: offset + 212.545, returnPose: bracoEsquerdoBaixo))
        strongerBracoDireito.insertStep(StepInTrack(step: StepBank.extensaoCotoveloDireito140, time: offset + 212.545, returnPose: flexaoCotoveloDireito))
        strongerBracoEsquerdo.insertStep(StepInTrack(step: StepBank.extensaoCotoveloEsquerdo140, time: offset + 212.545, returnPose: flexaoCotoveloEsquerdo))
    }
    
    
    // TESTE RETORNO
    
    static var testeRetorno = Track(member: .leftLeg, stepsInTrack: [])
    
    static func setupTesteRetorno() {
        
        let offset = -1.0
        
        testeRetorno.clear()
     
        let pesNoChao = ReturnPoseBank.pesNoChao
        testeRetorno.insertStep(StepInTrack(step: StepBank.elevaPeEsquerdo, time: offset + 1, returnPose: pesNoChao))
        testeRetorno.insertStep(StepInTrack(step: StepBank.elevaPeEsquerdo, time: offset + 4, returnPose: pesNoChao))
        testeRetorno.insertStep(StepInTrack(step: StepBank.elevaPeEsquerdo, time: offset + 7, returnPose: pesNoChao))
        testeRetorno.insertStep(StepInTrack(step: StepBank.elevaPeEsquerdo, time: offset + 10, returnPose: pesNoChao))
        testeRetorno.insertStep(StepInTrack(step: StepBank.elevaPeEsquerdo, time: offset + 13, returnPose: pesNoChao))
        testeRetorno.insertStep(StepInTrack(step: StepBank.elevaPeEsquerdo, time: offset + 16, returnPose: pesNoChao))
        testeRetorno.insertStep(StepInTrack(step: StepBank.elevaPeEsquerdo, time: offset + 19, returnPose: pesNoChao))
        testeRetorno.insertStep(StepInTrack(step: StepBank.elevaPeEsquerdo, time: offset + 22, returnPose: pesNoChao))
        testeRetorno.insertStep(StepInTrack(step: StepBank.elevaPeEsquerdo, time: offset + 25, returnPose: pesNoChao))
    }
    
    
    // ACORDA MARIA BONITA
    
    // Intro
    static var mariaBonitaPernaEsquerda = Track(member: .leftLeg, stepsInTrack: [])
    static var mariaBonitaPernaDireita = Track(member: .rightLeg, stepsInTrack: [])
    
    static var mariaBonitaBracoEsquerdo = Track(member: .leftArm, stepsInTrack: [])
    static var mariaBonitaBracoDireito = Track(member: .rightArm, stepsInTrack: [])
    
    static func setupMariaBonita() {
        
        let offset = -1.0
        
        mariaBonitaPernaDireita.clear()
        mariaBonitaPernaEsquerda.clear()
        mariaBonitaBracoDireito.clear()
        mariaBonitaBracoEsquerdo.clear()
        
        
        // INTRO
        // Ergue os pés alternadamente
        let pesNoChao = ReturnPoseBank.pesNoChao
        
        
        mariaBonitaPernaEsquerda.insertStep(StepInTrack(step: StepBank.elevaPeEsquerdo, time: offset + 0.603, returnPose: pesNoChao))
        mariaBonitaPernaDireita.insertStep(StepInTrack(step: StepBank.elevaPeDireito, time: offset + 1.168, returnPose: pesNoChao))
        mariaBonitaPernaEsquerda.insertStep(StepInTrack(step: StepBank.elevaPeEsquerdo, time: offset + 1.700, returnPose: pesNoChao))
        mariaBonitaPernaDireita.insertStep(StepInTrack(step: StepBank.elevaPeDireito, time: offset + 2.265, returnPose: pesNoChao))
        mariaBonitaPernaEsquerda.insertStep(StepInTrack(step: StepBank.elevaPeEsquerdo, time: offset + 2.863, returnPose: pesNoChao))
        mariaBonitaPernaDireita.insertStep(StepInTrack(step: StepBank.elevaPeDireito, time: offset + 3.461, returnPose: pesNoChao))
        mariaBonitaPernaEsquerda.insertStep(StepInTrack(step: StepBank.elevaPeEsquerdo, time: offset + 4.059, returnPose: pesNoChao))
        mariaBonitaPernaDireita.insertStep(StepInTrack(step: StepBank.elevaPeDireito, time: offset + 4.624, returnPose: pesNoChao))
        mariaBonitaPernaEsquerda.insertStep(StepInTrack(step: StepBank.elevaPeEsquerdo, time: offset + 5.189, returnPose: pesNoChao))
        mariaBonitaPernaDireita.insertStep(StepInTrack(step: StepBank.elevaPeDireito, time: offset + 5.787, returnPose: pesNoChao))
        mariaBonitaPernaEsquerda.insertStep(StepInTrack(step: StepBank.elevaPeEsquerdo, time: offset + 6.385, returnPose: pesNoChao))
        mariaBonitaPernaDireita.insertStep(StepInTrack(step: StepBank.elevaPeDireito, time: offset + 6.917, returnPose: pesNoChao))
        
        // INSTRUMENTOS
        
        // Braços para frente
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroDireito, time: offset + 8.212))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo, time: offset + 8.212))
        
        // Chutes alternados para frente
        mariaBonitaPernaEsquerda.insertStep(StepInTrack(step: StepBank.passoPeEsquerdo, time: offset + 8.080))
        mariaBonitaPernaDireita.insertStep(StepInTrack(step: StepBank.passoPeDireito, time: offset + 8.644))
        mariaBonitaPernaEsquerda.insertStep(StepInTrack(step: StepBank.passoPeEsquerdo, time: offset + 9.243))
        mariaBonitaPernaDireita.insertStep(StepInTrack(step: StepBank.passoPeDireito, time: offset + 9.907))
        mariaBonitaPernaEsquerda.insertStep(StepInTrack(step: StepBank.passoPeEsquerdo, time: offset + 10.505))
        mariaBonitaPernaDireita.insertStep(StepInTrack(step: StepBank.passoPeDireito, time: offset + 11.170))
        mariaBonitaPernaEsquerda.insertStep(StepInTrack(step: StepBank.passoPeEsquerdo, time: offset + 11.834))
        mariaBonitaPernaDireita.insertStep(StepInTrack(step: StepBank.passoPeDireito, time: offset + 12.499))
        mariaBonitaPernaEsquerda.insertStep(StepInTrack(step: StepBank.passoPeEsquerdo, time: offset + 13.230))
        mariaBonitaPernaDireita.insertStep(StepInTrack(step: StepBank.passoPeDireito, time: offset + 13.828))
        
        // ACORDA MARIA BONITA
        
        // Flexão ombro
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroDireito120, time: offset + 20.275))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo120, time: offset + 20.275))
        
        // LEVANTA VAI FAZER O CAFÉ
        
        // Passos alternados para frente
        mariaBonitaPernaEsquerda.insertStep(StepInTrack(step: StepBank.passoPeEsquerdo, time: offset + 22.966))
        mariaBonitaPernaDireita.insertStep(StepInTrack(step: StepBank.passoPeDireito, time: offset + 23.930))
        mariaBonitaPernaEsquerda.insertStep(StepInTrack(step: StepBank.passoPeEsquerdo, time: offset + 25.026))
        mariaBonitaPernaDireita.insertStep(StepInTrack(step: StepBank.passoPeDireito, time: offset + 26.189))
        
        // Braço para frente com cotovelos dobrados
        
//      mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.abdAduflexDireito, time: offset + 23.199))
        
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.abdDireito, time: offset + 23.199))
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.aduDireito, time: offset + 23.199))
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.flexDireito, time: offset + 23.199))
        
//      mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.abdAduflexEsquerdo, time: offset + 24.229))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.abdEsquerdo, time: offset + 24.229))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.aduEsquerdo, time: offset + 24.229))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexEsquerdo, time: offset + 24.229))
        
//      mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.abdAduflexDireito, time: offset + 25.325))
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.abdDireito, time: offset + 25.325))
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.aduDireito, time: offset + 25.325))
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.flexDireito, time: offset + 25.325))
        
//      mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.abdAduflexEsquerdo, time: offset + 25.488))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.abdEsquerdo, time: offset + 25.488))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.aduEsquerdo, time: offset + 25.488))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexEsquerdo, time: offset + 25.488))
        
        // QUE O DIA JÁ VEM RAIOANDO
//
//        // Flexão ombro
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroDireito120, time: offset + 29.246))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo120, time: offset + 29.246))
//
//        // E A POLÍCIA JÁ ESTÁ DE PÉ
//
//        // Cotovelos dobrados (pra dentro e pra fora)
        
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.admOmbroDireito, time: offset + 31.539))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.admOmbroEsquerdo, time: offset + 31.539))
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.admOmbroInvertidoDireito, time: offset + 32.104))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.admOmbroInvertidoEsquerdo, time: offset + 32.104))
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.admOmbroDireito, time: offset + 32.669))
     
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.admOmbroEsquerdo, time: offset + 32.669))
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.admOmbroInvertidoDireito, time: offset + 33.267))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.admOmbroInvertidoEsquerdo, time: offset + 33.267))
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.admOmbroDireito, time: offset + 33.965))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.admOmbroEsquerdo, time: offset + 33.965))
  
//        // ACORDA MARIA BONITA
//
//        // Flexão ombro
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroDireito120, time: offset + 37.952))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo120, time: offset + 37.952))
//
//        // LEVANTA VAI FAZER O CAFÉ
//
//        // Passos alternados para frente
        mariaBonitaPernaEsquerda.insertStep(StepInTrack(step: StepBank.passoPeEsquerdo, time: offset + 41.166))
        mariaBonitaPernaDireita.insertStep(StepInTrack(step: StepBank.passoPeDireito, time: offset + 42.299))
        mariaBonitaPernaEsquerda.insertStep(StepInTrack(step: StepBank.passoPeEsquerdo, time: offset + 43.433))
        mariaBonitaPernaDireita.insertStep(StepInTrack(step: StepBank.passoPeDireito, time: offset + 44.633))

//        // Braço para frente com cotovelos dobrados
//        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.abdAduflexDireito, time: offset + 41.308))
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.abdDireito, time: offset + 41.308))
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.aduDireito, time: offset + 41.308))
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.flexDireito, time: offset + 41.308))
           
        
        
//      mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.abdAduflexEsquerdo, time: offset + 42.438))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.abdEsquerdo, time: offset + 42.438))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.aduEsquerdo, time: offset + 42.438))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexEsquerdo, time: offset + 42.438))
        
        
//      mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.abdAduflexDireito, time: offset + 43.535))
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.abdDireito, time: offset + 43.535))
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.aduDireito, time: offset + 43.535))
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.flexDireito, time: offset + 43.535))
        
        
       // mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.abdAduflexEsquerdo, time: offset + 44.864))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.abdEsquerdo, time: offset + 44.864))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.aduEsquerdo, time: offset + 44.864))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexEsquerdo, time: offset + 44.864))
        
        
//
//        // QUE O DIA JÁ VEM RAIOANDO
//
//        // Flexão ombro
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroDireito120, time: offset + 47.489))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo120, time: offset + 47.489))
//
//        // E A POLÍCIA JÁ ESTÁ DE PÉ
//
//        // Cotovelos dobrados (pra dentro e pra fora)
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.admOmbroDireito, time: offset + 49.981))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.admOmbroEsquerdo, time: offset + 49.981))
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.admOmbroInvertidoDireito, time: offset + 50.546))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.admOmbroInvertidoEsquerdo, time: offset + 50.546))
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.admOmbroDireito, time: offset + 51.078))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.admOmbroEsquerdo, time: offset + 51.078))
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.admOmbroInvertidoDireito, time: offset + 51.676))
        
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.admOmbroInvertidoEsquerdo, time: offset + 51.676))
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.admOmbroDireito, time: offset + 52.274))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.admOmbroEsquerdo, time: offset + 52.274))
      
//
//        // SE EU SOUBESSE QUE CHORANDO
//
//        // Abre e fecha a base
        mariaBonitaPernaEsquerda.insertStep(StepInTrack(step: StepBank.passoPeEsquerdo, time: offset + 55.166))
        mariaBonitaPernaDireita.insertStep(StepInTrack(step: StepBank.passoPeDireito, time: offset + 57.099))

//        // Cotovelo dobrado com antebraço acima da cabeça
//      mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroECotoveloDireito, time: offset + 55.397))
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroDireito130, time: offset + 55.397))
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito70, time: offset + 55.397))
        
        
//      mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroECotoveloEsquerdo, time: offset + 57.424))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo130, time: offset + 57.424))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo70, time: offset + 57.424))
//
//        // EMPATO A TUA VIAGEM
//
//        // Abre e fecha a base
        mariaBonitaPernaEsquerda.insertStep(StepInTrack(step: StepBank.passoPeEsquerdo, time: offset + 59.466))
        mariaBonitaPernaDireita.insertStep(StepInTrack(step: StepBank.passoPeDireito, time: offset + 61.633))

//        // Abre os braços
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroDireito, time: offset + 59.817))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo, time: offset + 59.817))
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroDireito, time: offset + 61.844))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo, time: offset + 61.844))
//
//        // MEUS OLHOS ERAM DOIS RIOS
//
//        // Abre e fecha a base
        mariaBonitaPernaEsquerda.insertStep(StepInTrack(step: StepBank.passoPeEsquerdo, time: offset + 64.333))
        mariaBonitaPernaDireita.insertStep(StepInTrack(step: StepBank.passoPeDireito, time: offset + 66.300))

//        // Ergue os braços e abaixa girando por trás (dividido em duas partes)
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroDireito120, time: offset + 64.336))
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.circunducaoRetornoDireito, time: offset + 64.768))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo120, time: offset + 66.496))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.circunducaoRetornoEsquerdo, time: offset + 67.227))
//
//        // QUE NÃO TE DAVAM PASSAGEM
//
//        // Cruza os braços e abre
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.cruzaBracoDireito, time: offset + 68.755))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.cruzaBracoEsquerdo, time: offset + 68.755))

        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.abreBracoDireito, time: offset + 69.553))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.abreBracoEsquerdo, time: offset + 69.553))

        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.cruzaBracoDireito, time: offset + 70.450))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.cruzaBracoEsquerdo, time: offset + 70.450))

        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.abreBracoDireito, time: offset + 71.447))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.abreBracoEsquerdo, time: offset + 71.447))
//
//        // CABELOS PRETOS ANELADOS
//
//        // Abre e fecha a base
        mariaBonitaPernaEsquerda.insertStep(StepInTrack(step: StepBank.passoPeEsquerdo, time: offset + 73.333))
        mariaBonitaPernaDireita.insertStep(StepInTrack(step: StepBank.passoPeDireito, time: offset + 75.333))

//        // Cotovelo dobrado com antebraço acima da cabeça
//        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroECotoveloDireito, time: offset + 73.573))
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroDireito130, time: offset + 73.573))
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoCotoveloDireito70, time: offset + 73.573))
        
        
//        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroECotoveloEsquerdo, time: offset + 75.567))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo130, time: offset + 75.567))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoCotoveloEsquerdo70, time: offset + 75.567))
        
        
//
//        // OLHOS CASTANHOS DELICADOS
//
//        // Abre e fecha a base
        mariaBonitaPernaEsquerda.insertStep(StepInTrack(step: StepBank.passoPeEsquerdo, time: offset + 77.733))
        mariaBonitaPernaDireita.insertStep(StepInTrack(step: StepBank.passoPeDireito, time: offset + 79.799))

//        // Flexão de ombro
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroDireito, time: offset + 77.926))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo, time: offset + 77.926))

        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroDireito, time: offset + 80.053))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo, time: offset + 80.053))
//
//        // QUEM NÃO AMA A COR MORENA
//
//        // Abre e fecha a base
        mariaBonitaPernaEsquerda.insertStep(StepInTrack(step: StepBank.passoPeEsquerdo, time: offset + 82.333))
        mariaBonitaPernaDireita.insertStep(StepInTrack(step: StepBank.passoPeDireito, time: offset + 84.033))

//        // Ergue os braços e abaixa girando por trás (dividido em duas partes)
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroDireito120, time: offset + 82.379))
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.circunducaoRetornoDireito, time: offset + 83.076))

        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo120, time: offset + 84.241))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.circunducaoRetornoEsquerdo, time: offset + 84.938))
//
//        // MORRE CEGO E NÃO VÊ NADA
//
//        // Cruza os braços e abre
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.cruzaBracoDireito, time: offset + 86.599))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.cruzaBracoEsquerdo, time: offset + 86.599))

        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.abreBracoDireito, time: offset + 87.330))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.abreBracoEsquerdo, time: offset + 87.330))

//        // Mãos na frente dos olhos
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.maoDireitaNosOlhos, time: offset + 88.294))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.maoEsquerdaNosOlhos, time: offset + 88.294))
//
//        // ACORDA MARIA BONITA
//
//        // Flexão ombro
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroDireito120, time: offset + 93.100))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo120, time: offset + 93.100))
//
//        // LEVANDA, VAI FAZER O CAFÉ
//
//        // Passos alternados para frente
        mariaBonitaPernaEsquerda.insertStep(StepInTrack(step: StepBank.passoPeEsquerdo, time: offset + 95.866))
        mariaBonitaPernaDireita.insertStep(StepInTrack(step: StepBank.passoPeDireito, time: offset + 96.999))
        mariaBonitaPernaEsquerda.insertStep(StepInTrack(step: StepBank.passoPeEsquerdo, time: offset + 98.133))
        mariaBonitaPernaDireita.insertStep(StepInTrack(step: StepBank.passoPeDireito, time: offset + 99.299))

//        // Braço para frente com cotovelos dobrados
//        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.abdAduflexDireito, time: offset + 96.233))
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.abdDireito, time: offset + 96.233))
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.aduDireito, time: offset + 96.233))
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.flexDireito, time: offset + 96.233))
        
//        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.abdAduflexEsquerdo, time: offset + 97.233))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.abdEsquerdo, time: offset + 97.233))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.aduEsquerdo, time: offset + 97.233))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexEsquerdo, time: offset + 97.233))
        
//        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.abdAduflexDireito, time: offset + 98.400))
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.abdDireito, time: offset + 98.400))
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.aduDireito, time: offset + 98.400))
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.flexDireito, time: offset + 98.400))
        
        
//        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.abdAduflexEsquerdo, time: offset + 99.633))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.abdEsquerdo, time: offset + 99.633))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.aduEsquerdo, time: offset + 99.633))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexEsquerdo, time: offset + 99.633))
        
//        // QUE O DIA JÁ VEM RAIANDO
//
//        // Flexão ombro
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroDireito120, time: offset + 102.500))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo120, time: offset + 102.500))

//        // E A POLÍCIA JÁ ESTÁ DE PÉ
//
//        // Cotovelos dobrados (pra dentro e pra fora)
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.admOmbroDireito, time: offset + 104.533))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.admOmbroEsquerdo, time: offset + 104.533))
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.admOmbroInvertidoDireito, time: offset + 105.066))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.admOmbroInvertidoEsquerdo, time: offset + 105.066))
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.admOmbroDireito, time: offset + 105.666))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.admOmbroEsquerdo, time: offset + 105.666))
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.admOmbroInvertidoDireito, time: offset + 106.233))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.admOmbroInvertidoEsquerdo, time: offset + 106.233))
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.admOmbroDireito, time: offset + 106.833))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.admOmbroEsquerdo, time: offset + 106.833))
   
//
//        // ACORDA MARIA BONITA
//
//        // Flexão ombro
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroDireito120, time: offset + 110.966))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo120, time: offset + 110.966))
//
//        // LEVANDA, VAI FAZER O CAFÉ
//
//        // Passos alternados para frente
        mariaBonitaPernaEsquerda.insertStep(StepInTrack(step: StepBank.passoPeEsquerdo, time: offset + 114.066))
        mariaBonitaPernaDireita.insertStep(StepInTrack(step: StepBank.passoPeDireito, time: offset + 115.099))
        mariaBonitaPernaEsquerda.insertStep(StepInTrack(step: StepBank.passoPeEsquerdo, time: offset + 116.233))
        mariaBonitaPernaDireita.insertStep(StepInTrack(step: StepBank.passoPeDireito, time: offset + 117.399))

//        // Braço para frente com cotovelos dobrados
//        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.abdAduflexDireito, time: offset + 114.366))
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.abdDireito, time: offset + 114.366))
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.aduDireito, time: offset + 114.366))
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.flexDireito, time: offset + 114.366))
        
        
//        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.abdAduflexEsquerdo, time: offset + 115.433))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.abdEsquerdo, time: offset + 115.433))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.aduEsquerdo, time: offset + 115.433))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexEsquerdo, time: offset + 115.433))
        
//        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.abdAduflexDireito, time: offset + 116.566))
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.abdDireito, time: offset + 116.566))
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.aduDireito, time: offset + 116.566))
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.flexDireito, time: offset + 116.566))
        
//        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.abdAduflexEsquerdo, time: offset + 117.766))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.abdEsquerdo, time: offset + 117.766))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.aduEsquerdo, time: offset + 117.766))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexEsquerdo, time: offset + 117.766))
        
        
//
//        // QUE O DIA JÁ VEM RAIANDO
//
//        // Flexão ombro 
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.flexaoOmbroDireito120, time: offset + 120.466))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.flexaoOmbroEsquerdo120, time: offset + 120.466))
//
//        // E A POLÍCIA JÁ ESTÁ DE PÉ
//
//        // Cotovelos dobrados (pra dentro e pra fora)
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.admOmbroDireito, time: offset + 122.633))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.admOmbroEsquerdo, time: offset + 122.633))
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.admOmbroInvertidoDireito, time: offset + 123.166))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.admOmbroInvertidoEsquerdo, time: offset + 123.166))
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.admOmbroDireito, time: offset + 123.700))
        
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.admOmbroEsquerdo, time: offset + 123.700))
       
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.admOmbroInvertidoDireito, time: offset + 124.366))
        
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.admOmbroInvertidoEsquerdo, time: offset + 124.366))
        mariaBonitaBracoDireito.insertStep(StepInTrack(step: StepBank.admOmbroDireito, time: offset + 124.933))
        mariaBonitaBracoEsquerdo.insertStep(StepInTrack(step: StepBank.admOmbroEsquerdo, time: offset + 124.933))
       
        
    }
}
