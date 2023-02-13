//
//  AppDelegate.swift
//  Cricketer Info
//
//  Created by Gokul on 29/01/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

//Your app delegate object manages your app’s shared behaviors. The app delegate is effectively the root object of your app, and it works in conjunction with UIApplication to manage some interactions with the system. Like the UIApplication object, UIKit creates your app delegate object early in your app’s launch cycle so it’s always present.
//
//Use your app delegate object to handle the following tasks:
//
//Initializing your app’s central data structures
//
//Configuring your app’s scenes
//
//Responding to notifications originating from outside the app, such as low-memory warnings, download completion notifications, and more
//
//Responding to events that target the app itself, and aren’t specific to your app’s scenes, views, or view controllers
//
//Registering for any required services at launch time, such as Apple Push Notification service

//Launch time is an important point in an app’s life cycle. At launch time, the app delegate is responsible for executing any custom code required to initialize your app. For example, the app delegate typically creates the app’s initial data structures, registers for any required services, and tweaks the app’s initial user interface based on any available data.
