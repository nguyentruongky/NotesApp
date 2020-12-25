//
//  AppDelegate.swift
//  NotesApp
//
//  Created by Ky Nguyen on 5/6/20.
//  Copyright © 2020 Ky Nguyen. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = HomeController()
        window?.makeKeyAndVisible()
        
        return true
    }
}

