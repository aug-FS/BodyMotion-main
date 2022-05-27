//
//  ChoreographyBank.swift
//  BodyDetection
//
//  Created by Rafael Forbeck on 11/01/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import Foundation

class ChoreographyBank {
    
    // Acorda Maria Bonita
    static var mariaBonita = Choreography(tracks: [TrackBank.mariaBonitaBracoDireito,
                                                   TrackBank.mariaBonitaBracoEsquerdo,
                                                   TrackBank.mariaBonitaPernaDireita,
                                                   TrackBank.mariaBonitaPernaEsquerda],
                                          returnedPoses: [ReturnPoseBank.pesNoChao])
    
    static var stronger = Choreography(tracks: [TrackBank.strongerBracoDireito,
                                                TrackBank.strongerBracoEsquerdo,
                                                TrackBank.strongerPernaDireita,
                                                TrackBank.strongerPernaEsquerda,
                                                TrackBank.strongerTronco,
                                                TrackBank.strongerCabeca],
                                       returnedPoses: [ReturnPoseBank.ombrosMesmaAltura,
                                                       ReturnPoseBank.pesJuntos,
                                                       ReturnPoseBank.bracoDireitoBaixo,
                                                       ReturnPoseBank.bracoEsquerdoBaixo,
                                                       ReturnPoseBank.cotoveloDireitoAcimaDoEsquerdo,
                                                       ReturnPoseBank.cotoveloEsquerdoAcimaDoDireito,
                                                       ReturnPoseBank.extensaoCotoveloDireito,
                                                       ReturnPoseBank.extensaoCotoveloEsquerdo,
                                                       ReturnPoseBank.flexaoCotoveloDireito,
                                                       ReturnPoseBank.flexaoCotoveloEsquerdo,
                                                       ReturnPoseBank.troncoParaEsquerda,
                                                       ReturnPoseBank.troncoParaDireita,
                                                       ReturnPoseBank.antebracoDireitoParaCima,
                                                       ReturnPoseBank.antebracoEsquerdoParaCima,
                                                       ReturnPoseBank.antebracoDireitoParaLado,
                                                       ReturnPoseBank.antebracoEsquerdoParaLado,
                                                      ])
    
    static var rockWithYou = Choreography(tracks: [TrackBank.rockBracoDireito,
                                                   TrackBank.rockBracoEsquerdo,
                                                   TrackBank.rockPernaDireita,
                                                   TrackBank.rockPernaEsquerda,
                                                   TrackBank.rockTronco,
                                                   TrackBank.rockCabeca],
                                          returnedPoses: [ReturnPoseBank.ombroDireitoParaFrente,
                                                          ReturnPoseBank.ombroEsquerdoParaFrente,
                                                          ReturnPoseBank.troncoNaoRotacionado,
                                                          ReturnPoseBank.extensaoCotoveloDireito,
                                                          ReturnPoseBank.extensaoCotoveloEsquerdo,
                                                          ReturnPoseBank.flexaoCotoveloDireito,
                                                          ReturnPoseBank.flexaoCotoveloEsquerdo,
                                                          ReturnPoseBank.fechaBase,
                                                          ReturnPoseBank.cabecaParaDireita,
                                                          ReturnPoseBank.cabecaParaEsquerda,
                                                          ReturnPoseBank.joelhoDireitoExtendido,
                                                          ReturnPoseBank.joelhoEsquerdoExtendido,
                                                         ])
    
    static var testeRetorno = Choreography(tracks: [TrackBank.testeRetorno], returnedPoses: [ReturnPoseBank.pesNoChao])
    
//    var poliDirEsc: Choreography
//    
//    var flexaoOmbroDireito: Choreography
    
//    static var ombroEPerna = Choreography(tracks: [
//                                            TrackBank.teste1BracoDireito,
//                                            TrackBank.teste1BracoEsquerdo,
//                                            TrackBank.teste1PernaDireita,
//                                            TrackBank.teste1PernaEsquerda])
//
//    static var ombroEPerna2 = Choreography(tracks: [
//                                            TrackBank.teste2BracoDireito,
//                                            TrackBank.teste2BracoEsquerdo,
//                                            TrackBank.teste2PernaDireita,
//                                            TrackBank.teste2PernaEsquerda])
    
//    private init() {
//
//
//
//        poliDirEsc = Choreography(steps: [
//            Step(poses: [PoseBank.instance.polichineloCima], time: 5),
//            Step(poses: [PoseBank.instance.normal], time: 7),
//            Step(poses: [PoseBank.instance.troncoParaDireita], time: 9),
//            Step(poses: [PoseBank.instance.troncoParaEsquerda], time: 11),
//            Step(poses: [PoseBank.instance.polichineloCima], time: 13),
//            Step(poses: [PoseBank.instance.normal], time: 15),
//            Step(poses: [PoseBank.instance.troncoParaDireita], time: 17),
//            Step(poses: [PoseBank.instance.troncoParaEsquerda], time: 19),
//            Step(poses: [PoseBank.instance.polichineloCima], time: 21),
//            Step(poses: [PoseBank.instance.normal], time: 23),
//            Step(poses: [PoseBank.instance.troncoParaDireita], time: 25),
//            Step(poses: [PoseBank.instance.troncoParaEsquerda], time: 27),
//        ])
//
//        flexaoOmbroDireito = Choreography(steps: [
//            Step(poses: [
//                PoseBank.instance.flexaoOmbroDireito_45,
//                PoseBank.instance.flexaoOmbroDireito_90,
//                PoseBank.instance.flexaoOmbroDireito_135,
//                PoseBank.instance.flexaoOmbroDireito_179
//            ], time: 1)
//        ])
//    }
}
