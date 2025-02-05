//
//  GrocerEaseApp.swift
//  GrocerEase
//
//  Created by Digvijay Ingole on 2/5/25.
//

import SwiftUI

@main
struct GrocerEaseApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
