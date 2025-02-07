//
//  AppDelegate.swift
//  GrocerEase
//
//  Created by Digvijay Ingole on 2/6/25.
//


import UIKit
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        FirebaseApp.configure()
        print("Firebase has been configured successfully!")
        return true
    }
}
