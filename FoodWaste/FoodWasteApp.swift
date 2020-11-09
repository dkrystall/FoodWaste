//
//  FoodWasteApp.swift
//  FoodWaste
//
//  Created by David Krystall on 11/8/20.
//

import SwiftUI

@main
struct FoodWasteApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
