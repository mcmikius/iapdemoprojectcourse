//
//  AppDelegate.swift
//  IAPDemoProject
//
//  Created by Mykhailo Bondarenko on 26/10/2017.
//  Copyright © 2017 Mykhailo Bondarenko. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        IAPManager.shared.setupPurchases { success in
            if success {
                print("can make payments")
                IAPManager.shared.getProducts()
            }
        }
        
        return true
    }
}

