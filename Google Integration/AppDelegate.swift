//
//  AppDelegate.swift
//  Google Integration
//
//  Created by Usama Sadiq on 12/24/19.
//  Copyright © 2019 Usama Sadiq. All rights reserved.
//

import UIKit
import GoogleSignIn

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, GIDSignInDelegate {
    
    var window: UIWindow?
   
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        
        GIDSignIn.sharedInstance().clientID = "361964037769-ilbk40c6i53jrf8p97ohdtsk980b030r.apps.googleusercontent.com"
        // GIDSignIn.sharedInstance().delegate = self
        
        
        return true
    }
    
   
    
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
           print("In AppDelegate")
       }

       @available(iOS 9.0, *)
       func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any]) -> Bool {
         return GIDSignIn.sharedInstance().handle(url)
       }
//
//       func application(_ application: UIApplication,
//                        open url: URL, sourceApplication: String?, annotation: Any) -> Bool {
//         return GIDSignIn.sharedInstance().handle(url)
//       }


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

