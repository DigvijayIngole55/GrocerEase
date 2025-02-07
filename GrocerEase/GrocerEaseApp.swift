//
//  GrocerEaseApp.swift
//  GrocerEase
//
//  Created by Digvijay Ingole on 2/5/25.
//

import SwiftUI

@main
struct GrocerEaseApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {	
            NavigationView{
                WelcomeView()
                    .environment(\.managedObjectContext, persistenceController.container.viewContext)
            }
        }
    }
}
