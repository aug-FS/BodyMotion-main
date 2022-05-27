//
//  Choreography.swift
//  BodyDetection
//
//  Created by Rafael Forbeck on 11/01/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import Foundation

class Choreography {
    
    private var tracks: [Track]
    private (set) var returnedPoses: [ReturnPose]
    
    init(tracks: [Track], returnedPoses: [ReturnPose]) {
        self.tracks = tracks
        self.returnedPoses = returnedPoses
    }
    
    func getTracks() -> [Track]{
        return tracks
    }
}
