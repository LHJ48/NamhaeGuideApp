//
//  AppDelegate.swift
//  NamhaeGuide_iOS
//
//  Created by finger on 2022/03/14.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let mainSB = UIStoryboard.init(name: "Main", bundle: nil).instantiateInitialViewController()
        let appdelegate = UIApplication.shared.delegate as? AppDelegate
        appdelegate?.window?.rootViewController = mainSB
        return true
    }

}

