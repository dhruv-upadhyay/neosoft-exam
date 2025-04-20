//
//  AppDelegate.swift
//  Sanskriti
//
//  Created by Dhruv Upadhyay on 16/04/25.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let rootVC = HomeVC()
        window?.rootViewController = rootVC
        window?.makeKeyAndVisible()
        return true
    }
}

