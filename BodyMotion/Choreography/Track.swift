//
//  Track.swift
//  BodyDetection
//
//  Created by Rafael Forbeck on 27/01/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import Foundation

class Track {
    private var member: Member
    private var name: String
    private var stepsInTrack: [StepInTrack]
    
    init(member: Member, stepsInTrack: [StepInTrack]) {
        self.member = member
        self.name = member.rawValue
        self.stepsInTrack = stepsInTrack
    }
    
    public func getSteps() -> [StepInTrack] {
        return stepsInTrack
    }
    
    public func insertStep(_ step: StepInTrack ) {
        self.stepsInTrack.append(step)
    }
    
    public func getName() -> String {
        return name
    }
    
    public func getMember() -> Member {
        return member
    }
    
    public func clear() {
        stepsInTrack.removeAll()
    }
}
