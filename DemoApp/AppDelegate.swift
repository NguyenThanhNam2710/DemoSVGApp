//
//  AppDelegate.swift
//  DemoApp
//
//  Created by Nam Nguyễn Thành on 13/06/2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        if #available(iOS 13.0, *) {
            return true
        } else {
            self.window = UIWindow(frame: UIScreen.main.bounds)
//            self.window?.rootViewController = HomeViewController(nibName: "HomeViewController", bundle: nil)
            let rootViewController: UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController") as UIViewController
            self.window?.rootViewController = rootViewController
            self.window?.makeKeyAndVisible()
            return true
        }
    }
    
    
}

