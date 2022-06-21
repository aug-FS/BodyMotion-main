//
//  StepBank.swift
//  BodyDetection
//
//  Created by Rafael Forbeck on 27/01/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import Foundation

class StepBank {
    
    // Acorda Maria Bonita
    
    static var pesJuntos = Step(poses: [PoseBank.pesJuntos],
                                      moveName: "pesJuntos")
    
    static var elevaPeEsquerdo = Step(poses: [PoseBank.elevaPeEsquerdo100,
                                              PoseBank.elevaPeEsquerdo75,
                                              PoseBank.elevaPeEsquerdo50,
                                              PoseBank.elevaPeEsquerdo25],
                                      moveName: "elevaPeEsquerdo")
    
    static var elevaPeDireito = Step(poses: [ PoseBank.elevaPeDireito100,
                                              PoseBank.elevaPeDireito75,
                                              PoseBank.elevaPeDireito50,
                                              PoseBank.elevaPeDireito25],
                                     moveName: "elevaPeDireito")
    
    // Flexão de ombro
    static var flexaoOmbroDireito = Step(poses: [PoseBank.flexaoOmbroDireito80,
                                                 PoseBank.flexaoOmbroDireito70,
                                                 PoseBank.flexaoOmbroDireito60,
                                                 PoseBank.flexaoOmbroDireito50],
                                         moveName: "flexaoOmbroDireito")
    
    static var flexaoOmbroEsquerdo = Step(poses: [PoseBank.flexaoOmbroEsquerdo80,
                                                  PoseBank.flexaoOmbroEsquerdo70,
                                                  PoseBank.flexaoOmbroEsquerdo60,
                                                  PoseBank.flexaoOmbroEsquerdo50],
                                          moveName: "flexaoOmbroEsquerdo")
    
    // Abdução de ombro
    static var abducaoOmbroDireito120 = Step(poses: [PoseBank.abducaoOmbroDireito120,
                                                     PoseBank.abducaoOmbroDireito90,
                                                     PoseBank.abducaoOmbroDireito60,
                                                     PoseBank.abducaoOmbroDireito30],
                                             moveName: "abducaoOmbroDireito120")
    
    static var abducaoOmbroEsquerdo120 = Step(poses: [PoseBank.abducaoOmbroEsquerdo120,
                                                      PoseBank.abducaoOmbroEsquerdo90,
                                                      PoseBank.abducaoOmbroEsquerdo60,
                                                      PoseBank.abducaoOmbroEsquerdo30],
                                              moveName: "abducaoOmbroEsquerdo120")
    
    // Abducao de ombro com adução horizontal de ombro e flexão de cotovelo
    static var abdAduflexDireito = Step(poses: [PoseBank.abdAduflexDireito100,
                                                PoseBank.abdAduflexDireito75,
                                                PoseBank.abdAduflexDireito50,
                                                PoseBank.abdAduflexDireito25],
                                        moveName: "abdAduflexDireito")
    
    static var abdDireito = Step(poses: [PoseBank.abdDireito80,
                                                PoseBank.abdDireito70,
                                                PoseBank.abdDireito60,
                                                PoseBank.abdDireito50],
                                        moveName: "abdDireito")
    
    static var aduDireito = Step(poses: [PoseBank.aduDireito150,
                                                PoseBank.aduDireito160,
                                                PoseBank.aduDireito170,
                                                PoseBank.aduDireito180],
                                        moveName: "AduDireito")
    
    static var flexDireito = Step(poses: [PoseBank.flexDireito120,
                                                PoseBank.flexDireito130,
                                                PoseBank.flexDireito140,
                                                PoseBank.flexDireito150],
                                        moveName: "flexDireito")
    
    static var abdAduflexEsquerdo = Step(poses: [PoseBank.abdAduflexEsquerdo100,
                                                 PoseBank.abdAduflexEsquerdo75,
                                                 PoseBank.abdAduflexEsquerdo50,
                                                 PoseBank.abdAduflexEsquerdo25],
                                         moveName: "abdAduflexEsquerdo")
    
    static var abdEsquerdo = Step(poses: [PoseBank.abdEsquerdo80,
                                                PoseBank.abdEsquerdo70,
                                                PoseBank.abdEsquerdo60,
                                                PoseBank.abdEsquerdo50],
                                        moveName: "abdEsquerdo")
    
    static var aduEsquerdo = Step(poses: [PoseBank.aduEsquerdo150,
                                                PoseBank.aduEsquerdo160,
                                                PoseBank.aduEsquerdo170,
                                                PoseBank.aduEsquerdo180],
                                        moveName: "aduEsquerdo")
    
    static var flexEsquerdo = Step(poses: [PoseBank.flexEsquerdo120,
                                                PoseBank.flexEsquerdo130,
                                                PoseBank.flexEsquerdo140,
                                                PoseBank.flexEsquerdo150],
                                        moveName: "flexEsquerdo")
    
    // Passo pra frente
    // Direito
    static var passoPeDireito = Step(poses: [PoseBank.passoPeDireito20,
                                             PoseBank.passoPeDireito15,
                                             PoseBank.passoPeDireito10,
                                             PoseBank.passoPeDireito05],
                                     moveName: "passoPeDireito")
    
    // Esquerdo
    static var passoPeEsquerdo = Step(poses: [PoseBank.passoPeEsquerdo20,
                                              PoseBank.passoPeEsquerdo15,
                                              PoseBank.passoPeEsquerdo10,
                                              PoseBank.passoPeEsquerdo05],
                                      moveName: "passoPeEsquerdo")
    
    // Passo sentado
    // Direito
    static var passoSentadoPeDireito = Step(poses: [PoseBank.passoSentadoPeDireito20,
                                             PoseBank.passoSentadoPeDireito15,
                                             PoseBank.passoSentadoPeDireito10,
                                             PoseBank.passoSentadoPeDireito05],
                                     moveName: "passoSentadoPeDireito")
    
    // Esquerdo
    static var passoSentadoPeEsquerdo = Step(poses: [PoseBank.passoSentadoPeEsquerdo20,
                                              PoseBank.passoSentadoPeEsquerdo15,
                                              PoseBank.passoSentadoPeEsquerdo10,
                                              PoseBank.passoSentadoPeEsquerdo05],
                                      moveName: "passoSentadoPeEsquerdo")
    
    // Flexão ombro
    static var flexaoOmbroDireito120 = Step(poses: [PoseBank.flexaoOmbroDireito120,
                                                      PoseBank.flexaoOmbroDireito90,
                                                      PoseBank.flexaoOmbroDireito60,
                                                      PoseBank.flexaoOmbroDireito30],
                                              moveName: "flexaoOmbroDireitoTotal")
    
    static var flexaoOmbroEsquerdo120 = Step(poses: [PoseBank.flexaoOmbroEsquerdo120,
                                                       PoseBank.flexaoOmbroEsquerdo90,
                                                       PoseBank.flexaoOmbroEsquerdo60,
                                                       PoseBank.flexaoOmbroEsquerdo30],
                                               moveName: "flexaoOmbroEsquerdoTotal")
    
    static var admOmbroDireito = Step(poses: [PoseBank.admOmbroDireito80,
                                              PoseBank.admOmbroDireito70,
                                              PoseBank.admOmbroDireito60,
                                              PoseBank.admOmbroDireito50],
                                      moveName: "admOmbroDireito")
    
    static var admOmbroEsquerdo = Step(poses: [PoseBank.admOmbroEsquerdo80,
                                               PoseBank.admOmbroEsquerdo70,
                                               PoseBank.admOmbroEsquerdo60,
                                               PoseBank.admOmbroEsquerdo50],
                                       moveName: "admOmbroEsquerdo")
    
    
    static var admOmbroInvertidoDireito = Step(poses: [PoseBank.admOmbroInvertidoDireito80,
                                                       PoseBank.admOmbroInvertidoDireito70,
                                                       PoseBank.admOmbroInvertidoDireito60,
                                                       PoseBank.admOmbroInvertidoDireito50],
                                               moveName: "admOmbroInvertidoDireito")
    

    
    static var admOmbroInvertidoEsquerdo = Step(poses: [PoseBank.admOmbroInvertidoEsquerdo80,
                                                        PoseBank.admOmbroInvertidoEsquerdo70,
                                                        PoseBank.admOmbroInvertidoEsquerdo60,
                                                        PoseBank.admOmbroInvertidoEsquerdo50],
                                                moveName: "admOmbroInvertidoEsquerdo")
    

    static var flexaoOmbroECotoveloDireito = Step(poses: [PoseBank.flexaoOmbroECotoveloDireito100,
                                                          PoseBank.flexaoOmbroECotoveloDireito75,
                                                          PoseBank.flexaoOmbroECotoveloDireito50,
                                                          PoseBank.flexaoOmbroECotoveloDireito25],
                                                  moveName: "flexaoOmbroECotoveloDireito")
    
    static var flexaoOmbroDireito130 = Step(poses: [PoseBank.flexaoOmbroDireito120_1,
                                                          PoseBank.flexaoOmbroDireito90_1,
                                                          PoseBank.flexaoOmbroDireito60_1,
                                                          PoseBank.flexaoOmbroDireito30_1],
                                                  moveName: "flexaoOmbroDireito")
    
    static var flexaoCotoveloDireito70 = Step(poses: [PoseBank.flexaoCotoveloDireito70_1,
                                                          PoseBank.flexaoCotoveloDireito60_1,
                                                          PoseBank.flexaoCotoveloDireito50_1,
                                                          PoseBank.flexaoCotoveloDireito40_1],
                                                  moveName: "flexaoCotoveloDireito")
    
    static var flexaoOmbroECotoveloEsquerdo = Step(poses: [PoseBank.flexaoOmbroECotoveloEsquerdo100,
                                                           PoseBank.flexaoOmbroECotoveloEsquerdo75,
                                                           PoseBank.flexaoOmbroECotoveloEsquerdo50,
                                                           PoseBank.flexaoOmbroECotoveloEsquerdo25],
                                                   moveName: "flexaoOmbroECotoveloEsquerdo")
    
    static var flexaoOmbroEsquerdo130 = Step(poses: [PoseBank.flexaoOmbroEsquerdo120_1,
                                                          PoseBank.flexaoOmbroEsquerdo90_1,
                                                          PoseBank.flexaoOmbroEsquerdo60_1,
                                                          PoseBank.flexaoOmbroEsquerdo30_1],
                                                  moveName: "flexaoOmbroEsquerdo")
    
    static var flexaoCotoveloEsquerdo70 = Step(poses: [PoseBank.flexaoCotoveloEsquerdo70_1,
                                                          PoseBank.flexaoCotoveloEsquerdo60_1,
                                                          PoseBank.flexaoCotoveloEsquerdo50_1,
                                                          PoseBank.flexaoCotoveloEsquerdo40_1],
                                                  moveName: "flexaoCotoveloEsquerdo")
    
    static var circunducaoRetornoDireito = Step(poses: [PoseBank.circunducaoRetornoDireito100,
                                                        PoseBank.circunducaoRetornoDireito75,
                                                        PoseBank.circunducaoRetornoDireito50,
                                                        PoseBank.circunducaoRetornoDireito25],
                                                moveName: "circunducaoRetornoDireito")
    
    static var circunducaoRetornoEsquerdo = Step(poses: [PoseBank.circunducaoRetornoEsquerdo100,
                                                         PoseBank.circunducaoRetornoEsquerdo75,
                                                         PoseBank.circunducaoRetornoEsquerdo50,
                                                         PoseBank.circunducaoRetornoEsquerdo25],
                                                 moveName: "circunducaoRetornoEsquerdo")
    
    static var cruzaBracoDireito = Step(poses: [PoseBank.cruzaBracoDireito100,
                                                PoseBank.cruzaBracoDireito75,
                                                PoseBank.cruzaBracoDireito50,
                                                PoseBank.cruzaBracoDireito25],
                                        moveName: "cruzaBracoDireito")
    
    static var cruzaBracoEsquerdo = Step(poses: [PoseBank.cruzaBracoEsquerdo100,
                                                 PoseBank.cruzaBracoEsquerdo75,
                                                 PoseBank.cruzaBracoEsquerdo50,
                                                 PoseBank.cruzaBracoEsquerdo25],
                                         moveName: "cruzaBracoEsquerdo")
    
    static var abreBracoDireito = Step(poses: [PoseBank.abreBracoDireito100,
                                               PoseBank.abreBracoDireito75,
                                               PoseBank.abreBracoDireito50,
                                               PoseBank.abreBracoDireito25],
                                       moveName: "abreBracoDireito")
    
    static var abreBracoEsquerdo = Step(poses: [PoseBank.abreBracoEsquerdo100,
                                                PoseBank.abreBracoEsquerdo75,
                                                PoseBank.abreBracoEsquerdo50,
                                                PoseBank.abreBracoEsquerdo25],
                                        moveName: "abreBracoEsquerdo")
    
    static var maoDireitaNosOlhos = Step(poses: [PoseBank.maoDireitaNosOlhos100,
                                                 PoseBank.maoDireitaNosOlhos75,
                                                 PoseBank.maoDireitaNosOlhos50,
                                                 PoseBank.maoDireitaNosOlhos25],
                                         moveName: "maoDireitaNosOlhos")
    
    static var maoEsquerdaNosOlhos = Step(poses: [PoseBank.maoEsquerdaNosOlhos100,
                                                  PoseBank.maoEsquerdaNosOlhos75,
                                                  PoseBank.maoEsquerdaNosOlhos50,
                                                  PoseBank.maoEsquerdaNosOlhos25],
                                          moveName: "maoEsquerdaNosOlhos")
    
    // STRONG
    
    static var elevaOmbroEsquerdo = Step(poses: [PoseBank.elevaOmbroEsquerdo100], moveName: "elevaOmbroEsquerdo")
    static var elevaOmbroDireito = Step(poses: [PoseBank.elevaOmbroDireito100], moveName: "elevaOmbroDireito")
    
    static var ombrosMesmaAltura = Step(poses: [PoseBank.ombrosMesmaAltura], moveName: "ombrosMesmaAltura")
    
    static var flexaoCotoveloEsquerdo90 = Step(poses: [PoseBank.flexaoCotoveloEsquerdo105,
                                                       PoseBank.flexaoCotoveloEsquerdo110,
                                                       PoseBank.flexaoCotoveloEsquerdo115,
                                                       PoseBank.flexaoCotoveloEsquerdo120,], moveName: "flexaoCotoveloEsquerdo90")
    
    static var flexaoCotoveloDireito90 = Step(poses: [PoseBank.flexaoCotoveloDireito105,
                                                      PoseBank.flexaoCotoveloDireito110,
                                                      PoseBank.flexaoCotoveloDireito115,
                                                      PoseBank.flexaoCotoveloDireito120,], moveName: "flexaoCotoveloDireito90")
    
    static var bracoDireitoBaixo = Step(poses: [PoseBank.bracoDireitoBaixo], moveName: "braçoDireitoBaixo")
    static var bracoEsquerdoBaixo = Step(poses: [PoseBank.bracoEsquerdoBaixo], moveName: "braçoEsquerdoBaixo")
    
    // Abdução de ombro
    static var abducaoOmbroDireito60 = Step(poses: [
        PoseBank.abducaoOmbroDireito60,
        PoseBank.abducaoOmbroDireito50,
        PoseBank.abducaoOmbroDireito40,
        PoseBank.abducaoOmbroDireito30],
                                            moveName: "abducaoOmbroDireito60")
    
    static var abducaoOmbroEsquerdo60 = Step(poses: [
        PoseBank.abducaoOmbroEsquerdo60,
        PoseBank.abducaoOmbroEsquerdo50,
        PoseBank.abducaoOmbroEsquerdo40,
        PoseBank.abducaoOmbroEsquerdo30],
                                             moveName: "abducaoOmbroEsquerdo60")
    
    static var extensaoCotoveloDireito140 = Step(poses: [
        PoseBank.extensaoCotoveloDireito135,
        PoseBank.extensaoCotoveloDireito130,
        PoseBank.extensaoCotoveloDireito125,
        PoseBank.extensaoCotoveloDireito120],
                                                 moveName: "extensaoCotoveloDireito140")
    
    static var extensaoCotoveloEsquerdo140 = Step(poses: [
        PoseBank.extensaoCotoveloEsquerdo135,
        PoseBank.extensaoCotoveloEsquerdo130,
        PoseBank.extensaoCotoveloEsquerdo125,
        PoseBank.extensaoCotoveloEsquerdo120],
                                                  moveName: "extensaoCotoveloEsquerdo140")
    
    static var troncoParaDireita = Step(poses: [
        PoseBank.troncoParaDireita035,
        PoseBank.troncoParaDireita03,
        PoseBank.troncoParaDireita025,
        PoseBank.troncoParaDireita02], moveName: "troncoParaDireita")
    
    static var troncoParaEsquerda = Step(poses: [
        PoseBank.troncoParaEsquerda035,
        PoseBank.troncoParaEsquerda03,
        PoseBank.troncoParaEsquerda025,
        PoseBank.troncoParaEsquerda02], moveName: "troncoParaEsquerda")
    
    static var troncoParaFrente = Step(poses: [
        PoseBank.troncoParaFrente06,
        PoseBank.troncoParaFrente058,
        PoseBank.troncoParaFrente056,
        PoseBank.troncoParaFrente054],
                                       moveName: "troncoParaFrente")
    
    static var troncoParaTras = Step(poses: [
        PoseBank.troncoParaTras120,
        PoseBank.troncoParaTras110,
        PoseBank.troncoParaTras100,
        PoseBank.troncoParaTras90],
                                       moveName: "troncoParaTras")
    
    static var maoDireitaParaEsquerda = Step(poses: [
        PoseBank.maoDireitaParaEsquerda],
                                             moveName: "maoDireitaParaEsquerda")
    
    static var maoEsquerdaParaDireita = Step(poses: [
        PoseBank.maoEsquerdaParaDireita],
                                             moveName: "maoEsquerdaParaDireita")
    
    static var maoDireitaAcimaCabecaCentro = Step(poses: [
        PoseBank.maoDireitaAcimaCabecaCentro], moveName: "maoDireitaAcimaCabecaCentro")
    static var maoEsquerdaAcimaCabecaCentro = Step(poses: [
        PoseBank.maoEsquerdaAcimaCabecaCentro], moveName: "maoEsquerdaAcimaCabecaCentro")
    
    static var borboletaDireitoAberta = Step(poses: [PoseBank.borboletaDireitoAberta70,
                                                  PoseBank.borboletaDireitoAberta60,
                                                  PoseBank.borboletaDireitoAberta50,
                                                  PoseBank.borboletaDireitoAberta40],
                                          moveName: "borboletaDireitoAberta")
    
    static var borboletaEsquerdoAberta = Step(poses: [PoseBank.borboletaEsquerdoAberta70,
                                                  PoseBank.borboletaEsquerdoAberta60,
                                                  PoseBank.borboletaEsquerdoAberta50,
                                                  PoseBank.borboletaEsquerdoAberta40],
                                          moveName: "borboletaEsquerdoAberta")
    
    static var borboletaDireitoFechada = Step(poses: [PoseBank.borboletaDireitoFechada0,
                                                  PoseBank.borboletaDireitoFechada5,
                                                  PoseBank.borboletaDireitoFechada10,
                                                  PoseBank.borboletaDireitoFechada15],
                                          moveName: "borboletaDireitoFechada")
    
    static var borboletaEsquerdoFechada = Step(poses: [PoseBank.borboletaEsquerdoFechada0,
                                                  PoseBank.borboletaEsquerdoFechada5,
                                                  PoseBank.borboletaEsquerdoFechada10,
                                                  PoseBank.borboletaEsquerdoFechada15],
                                          moveName: "borboletaEsquerdoFechada")
    
    static var cotoveloDireitoAcimaDoEsquerdo = Step(poses: [PoseBank.cotoveloDireitoAcimaDoEsquerdo], moveName: "cotoveloDireitoAcimaDoEsquerdo")
    static var cotoveloEsquerdoAcimaDoDireito = Step(poses: [PoseBank.cotoveloEsquerdoAcimaDoDireito], moveName: "cotoveloEsquerdoAcimaDoDireito")
    
    static var antebracoDireitoParaCima = Step(poses: [PoseBank.antebracoDireitoParaCima30,
                                                      PoseBank.antebracoDireitoParaCima35,
                                                      PoseBank.antebracoDireitoParaCima40,
                                                      PoseBank.antebracoDireitoParaCima45],
                                              moveName: "antebracoDireitoParaCima")
    
    static var antebracoEsquerdoParaCima = Step(poses: [PoseBank.antebracoEsquerdoParaCima30,
                                                      PoseBank.antebracoEsquerdoParaCima35,
                                                      PoseBank.antebracoEsquerdoParaCima40,
                                                      PoseBank.antebracoEsquerdoParaCima45],
                                              moveName: "antebracoEsquerdoParaCima")
    
    static var antebracoDireitoParaLado = Step(poses: [PoseBank.antebracoDireitoParaLado30,
                                                      PoseBank.antebracoDireitoParaLado35,
                                                      PoseBank.antebracoDireitoParaLado40,
                                                      PoseBank.antebracoDireitoParaLado45],
                                              moveName: "antebracoDireitoParaLado")
    
    static var antebracoEsquerdoParaLado = Step(poses: [PoseBank.antebracoEsquerdoParaLado30,
                                                      PoseBank.antebracoEsquerdoParaLado35,
                                                      PoseBank.antebracoEsquerdoParaLado40,
                                                      PoseBank.antebracoEsquerdoParaLado45],
                                              moveName: "antebracoEsquerdoParaLado")
    
    static var cabecaParaDireita = Step(poses: [PoseBank.cabecaParaDireita], moveName: "cabecaParaDireita")
    static var cabecaParaEsquerda = Step(poses: [PoseBank.cabecaParaEsquerda], moveName: "cabecaParaEsquerda")
    
    // Rock With You
    static var ombroDireitoParaFrente = Step(poses: [PoseBank.ombroDireitoParaFrente4,
                                                     PoseBank.ombroDireitoParaFrente3,
                                                     PoseBank.ombroDireitoParaFrente2,
                                                     PoseBank.ombroDireitoParaFrente1,],
                                             moveName: "ombroDireitoParaFrente")
    
    static var ombroEsquerdoParaFrente = Step(poses: [PoseBank.ombroEsquerdoParaFrente4,
                                                     PoseBank.ombroEsquerdoParaFrente3,
                                                     PoseBank.ombroEsquerdoParaFrente2,
                                                     PoseBank.ombroEsquerdoParaFrente1,],
                                             moveName: "ombroEsquerdoParaFrente")
    
    static var rotacaoTroncoParaDireita = Step(poses: [PoseBank.rotacaoTroncoParaDireita40,
                                                       PoseBank.rotacaoTroncoParaDireita35,
                                                       PoseBank.rotacaoTroncoParaDireita30,
                                                       PoseBank.rotacaoTroncoParaDireita25,],
                                             moveName: "rotacaoTroncoParaDireita")
    
    static var rotacaoTroncoParaEsquerda = Step(poses: [PoseBank.rotacaoTroncoParaEsquerda40,
                                                        PoseBank.rotacaoTroncoParaEsquerda35,
                                                        PoseBank.rotacaoTroncoParaEsquerda30,
                                                        PoseBank.rotacaoTroncoParaEsquerda25,],
                                             moveName: "rotacaoTroncoParaEsquerda")
    
    static var abreBase = Step(poses: [PoseBank.abreBase40,
                                       PoseBank.abreBase35,
                                       PoseBank.abreBase30,
                                       PoseBank.abreBase25,], moveName: "abreBase")
    
    static var maoDireitaCruza = Step(poses: [PoseBank.maoDireitaCruza], moveName: "maoDireitaCruza")
    static var maoEsquerdaCruza = Step(poses: [PoseBank.maoEsquerdaCruza], moveName: "maoEsquerdaCruza")
    
    static var flexaoJoelhoDireito = Step(poses: [PoseBank.flexaoJoelhoDireito140],
                                          moveName: "flexaoJoelhoDireito")
    
    static var flexaoJoelhoEsquerdo = Step(poses: [PoseBank.flexaoJoelhoEsquerdo140],
                                          moveName: "flexaoJoelhoEsquerdo")
    
    
    
    
    
    static func getAllSteps() -> [Step] {
        
        var list = [Step]()
        
        list.append(pesJuntos)
        list.append(elevaPeEsquerdo)
        list.append(elevaPeDireito)
        list.append(flexaoOmbroEsquerdo)
        list.append(flexaoOmbroDireito)
        list.append(abducaoOmbroDireito120)
        list.append(abducaoOmbroEsquerdo120)
//        list.append(abdAduflexDireito)
        list.append(abdDireito)
        list.append(aduDireito)
        list.append(flexDireito)
//      list.append(abdAduflexEsquerdo)
        list.append(abdEsquerdo)
        list.append(aduEsquerdo)
        list.append(flexEsquerdo)
        list.append(passoPeDireito)
        list.append(passoPeEsquerdo)
        list.append(passoSentadoPeDireito)
        list.append(passoSentadoPeEsquerdo)
//      list.append(flexaoOmbroDireitoTotal)
        list.append(flexaoOmbroDireito120)
//      list.append(flexaoOmbroEsquerdoTotal)
        list.append(flexaoOmbroEsquerdo120)
        list.append(admOmbroDireito)
        list.append(admOmbroEsquerdo)
        list.append(admOmbroInvertidoDireito)
        list.append(admOmbroInvertidoEsquerdo)
//        list.append(flexaoOmbroECotoveloDireito)
        list.append(flexaoOmbroDireito130)
        list.append(flexaoCotoveloDireito70)
//        list.append(flexaoOmbroECotoveloEsquerdo)
        list.append(flexaoOmbroEsquerdo130)
        list.append(flexaoCotoveloEsquerdo70)
        list.append(circunducaoRetornoDireito)
        list.append(circunducaoRetornoEsquerdo)
        list.append(cruzaBracoDireito)
        list.append(cruzaBracoEsquerdo)
        list.append(abreBracoDireito)
        list.append(abreBracoEsquerdo)
        list.append(maoDireitaNosOlhos)
        list.append(maoEsquerdaNosOlhos)
        list.append(elevaOmbroEsquerdo)
        list.append(elevaOmbroDireito)
        list.append(ombrosMesmaAltura)
        list.append(flexaoCotoveloEsquerdo90)
        list.append(flexaoCotoveloDireito90)
        list.append(bracoDireitoBaixo)
        list.append(bracoEsquerdoBaixo)
        list.append(abducaoOmbroDireito60)
        list.append(abducaoOmbroEsquerdo60)
        list.append(extensaoCotoveloDireito140)
        list.append(extensaoCotoveloEsquerdo140)
        list.append(troncoParaDireita)
        list.append(troncoParaEsquerda)
        list.append(troncoParaFrente)
        list.append(troncoParaTras)
        list.append(maoDireitaParaEsquerda)
        list.append(maoEsquerdaParaDireita)
        list.append(maoDireitaAcimaCabecaCentro)
        list.append(maoEsquerdaAcimaCabecaCentro)
        list.append(cotoveloDireitoAcimaDoEsquerdo)
        list.append(cotoveloEsquerdoAcimaDoDireito)
        list.append(antebracoDireitoParaCima)
        list.append(antebracoEsquerdoParaCima)
        list.append(antebracoDireitoParaLado)
        list.append(antebracoEsquerdoParaLado)
        list.append(cabecaParaDireita)
        list.append(cabecaParaEsquerda)
        list.append(ombroDireitoParaFrente)
        list.append(ombroEsquerdoParaFrente)
        list.append(rotacaoTroncoParaDireita)
        list.append(rotacaoTroncoParaEsquerda)
        list.append(abreBase)
        list.append(maoDireitaCruza)
        list.append(maoEsquerdaCruza)
        list.append(flexaoJoelhoDireito)
        list.append(flexaoJoelhoEsquerdo)
        
        return list
    }
    
    
    
    
    
    
    
    
    
    
    //    // Testes anteriores
    //
    //    static var bracoDireito = Step(poses: [PoseBank.bracoDireitoNormal])
    //    static var bracoEsquerdo = Step(poses: [PoseBank.bracoEsquerdoNormal])
    //
    ////    static var flexaoOmbroDireito = Step(poses: [PoseBank.flexaoOmbroDireito_45,
    ////                                                 PoseBank.flexaoOmbroDireito_90,
    ////                                                 PoseBank.flexaoOmbroDireito_135,
    ////                                                 PoseBank.flexaoOmbroDireito_179])
    ////
    ////    static var flexaoOmbroEsquerdo = Step(poses: [PoseBank.flexaoOmbroEsquerdo_45,
    ////                                                  PoseBank.flexaoOmbroEsquerdo_90,
    ////                                                  PoseBank.flexaoOmbroEsquerdo_135,
    ////                                                  PoseBank.flexaoOmbroEsquerdo_179])
    //
    //    static var erguePernaDireita = Step(poses: [PoseBank.erguePernaDireita])
    //    static var erguePernaEsquerda = Step(poses: [PoseBank.erguePernaDireita])
    //
    //    static var pernaDireitaNormal = Step(poses: [PoseBank.pernaDireitaNormal])
    //    static var pernaEsquerdaNormal = Step(poses: [PoseBank.pernaEsquerdaNormal])
}
