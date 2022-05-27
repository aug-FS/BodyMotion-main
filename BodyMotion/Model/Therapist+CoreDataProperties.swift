//
//  Therapist+CoreDataProperties.swift
//  
//
//  Created by Rafael Forbeck on 27/08/21.
//
//

import Foundation
import CoreData


extension Therapist {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Therapist> {
        return NSFetchRequest<Therapist>(entityName: "Therapist")
    }

    @NSManaged public var name: String
    @NSManaged public var id: UUID
    @NSManaged public var patients: NSSet

}

// MARK: Generated accessors for patients
extension Therapist {

    @objc(addPatientsObject:)
    @NSManaged public func addToPatients(_ value: Player)

    @objc(removePatientsObject:)
    @NSManaged public func removeFromPatients(_ value: Player)

    @objc(addPatients:)
    @NSManaged public func addToPatients(_ values: NSSet)

    @objc(removePatients:)
    @NSManaged public func removeFromPatients(_ values: NSSet)

}
