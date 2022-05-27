//
//  SongsBank.swift
//  BodyMotion
//
//  Created by Carlos Rafael Hasselmann Forbeck on 10/02/22.
//

import UIKit

class SongsBank {
    
    static var mariaBonita = Song(
        choreography: ChoreographyBank.mariaBonita,
        songId: .mariaBonita,
        cover: UIImage(named: "song_maria_bonita")!,
        songName: "Acorda Maria Bonita",
        artistName: "Trio Nordestino",
        videoName: "MariaBonita_B.mov",
//        videoName: "Corte.mov",
        songTime: "2:00",
        instrutionVideo: nil,
        tags: [])
    
    static var strong = Song(
        choreography: ChoreographyBank.stronger,
        songId: .stronger,
        cover: UIImage(named: "stronger")!,
        songName: "Stronger",
        artistName: "New Eyes",
        videoName: "Stronger.mov",
//        videoName: "Corte.mov",
        songTime: "3:39",
        instrutionVideo: nil,
        tags: [])
    
    static var rockWithYou = Song(
        choreography: ChoreographyBank.rockWithYou,
        songId: .rockWithYou,
        cover: UIImage(named: "rockWithYou")!,
        songName: "Rock With You",
        artistName: "Michael Jackson",
        videoName: "RockWithYou.mov",
//        videoName: "Corte.mov",
        songTime: "3:44",
//        instrutionVideo: "RockWithYouInstructions.mov",
        instrutionVideo: "RockWithYou.mov",
        tags: [])
    
    static var all = [mariaBonita, strong, rockWithYou]
}

enum SongID {
    case mariaBonita
    case stronger
    case rockWithYou
}
