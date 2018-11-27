//
//  CoreDataManager.swift
//  FAARM
//
//  Created by Christopher Villanueva on 4/25/18.
//  Copyright © 2018 Christopher Villanueva. All rights reserved.
//

import CoreData

struct CoreDataManager {
    
    static let shared = CoreDataManager() // will live forever if application is still alive
    
    let persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "FAARMDataModels")
        container.loadPersistentStores { (storeDescription, error) in
            if let error = error {
                fatalError("Failed to load store: \(error)")
            }
        }
        return container
    }()
    
}
