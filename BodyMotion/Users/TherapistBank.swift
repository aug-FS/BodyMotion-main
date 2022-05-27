//
//  TherapistBank.swift
//  BodyMotion
//
//  Created by Rafael Forbeck on 26/08/21.
//

import UIKit
import CoreData

class TherapistBank {
    
    public static var instance = TherapistBank()
    
    var therapists = [Therapist]()
    
    private let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    private init() {
        
        fetchTherapists()
    }
    
    func fetchTherapists() {
        // Fetch the data from Core Data
        do {
            self.therapists = try context.fetch(Therapist.fetchRequest())
            
        } catch {
            
        }
        therapists.sort { $0.name < $1.name }
    }
    
    func insertTherapist(name: String) {
        
        let therapist = Therapist(context: context)
        therapist.name = name
        therapist.id = UUID()
        
        do {
            try context.save()
        } catch {
            
        }
        fetchTherapists()
    }
    
    func removeTherapist(therapistToRemove: Therapist) {
        
        context.delete(therapistToRemove)
        
        do {
            try context.save()
        } catch {
                
        }
        
        fetchTherapists()
    }
    
    func update() {
        
        do {
            try context.save()
        } catch {
            
        }
        
        fetchTherapists()
    }
    
    func therapistExists(therapistName: String) -> Bool {
        for therapist in therapists {
            if therapist.name == therapistName {
                return true
            }
        }
        return false
    }
}
