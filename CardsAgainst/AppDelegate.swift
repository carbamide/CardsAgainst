//
//  AppDelegate.swift
//  CardsAgainst
//
//  Created by JP Simard on 10/25/14.
//  Copyright (c) 2014 JP Simard. All rights reserved.
//

import UIKit

@UIApplicationMain
final class AppDelegate: UIResponder, UIApplicationDelegate {

    var window : UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject : AnyObject]?) -> Bool {

        window = UIWindow(frame: UIScreen.mainScreen().bounds)

        // Window
        window!.rootViewController = UINavigationController(rootViewController: MenuViewController())
        (window!.rootViewController as! UINavigationController).interactivePopGestureRecognizer!.enabled = false;

        window!.makeKeyAndVisible()

        // Appearance
        application.statusBarStyle = .LightContent
        UINavigationBar.appearance().barTintColor = navBarColor
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName: lightColor]
        window!.tintColor = appTintColor

        // Simultaneously advertise and browse for other players
        ConnectionManager.start()
        return true
    }
}
