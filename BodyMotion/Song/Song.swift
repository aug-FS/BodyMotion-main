//
//  Song.swift
//  BodyMotion
//
//  Created by Carlos Rafael Hasselmann Forbeck on 10/02/22.
//

import Foundation
import UIKit

class Song {
    
    private (set) var choreography: Choreography
    private (set) var songID: SongID
    private (set) var cover: UIImage
    private (set) var songName: String
    private (set) var artistName: String
    private (set) var videoName: String
    private (set) var songTime: String
    private (set) var instrutionVideo: String?
    private (set) var tags: [Tag]
    
    
    init (choreography: Choreography, songId: SongID, cover: UIImage, songName: String, artistName: String, videoName: String, songTime: String, instrutionVideo: String?, tags: [Tag]) {
        self.choreography = choreography
        self.songID = songId
        self.cover = cover
        self.songName = songName
        self.artistName = artistName
        self.videoName = videoName
        self.songTime = songTime
        self.instrutionVideo = instrutionVideo
        self.tags = tags
    }
}
