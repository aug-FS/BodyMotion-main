//
//  Player+CoreDataProperties.swift
//  
//
//  Created by Rafael Forbeck on 27/08/21.
//
//

import Foundation
import CoreData


extension Player {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Player> {
        return NSFetchRequest<Player>(entityName: "Player")
    }

    @NSManaged public var limbs: [Bool]
    @NSManaged public var name: String
    @NSManaged public var id: UUID
    @NSManaged public var therapist: Therapist

}
