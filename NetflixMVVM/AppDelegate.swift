//
//  AppDelegate.swift
//  NetflixMVVM
//
//  Created by Ben Sullivan on 18/07/2017.
//  Copyright © 2017 Ben Sullivan. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?


  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    
    window = UIWindow()
    
    let appCoordinator = AppCoordinator(window: window!)
    
    appCoordinator.start()
    
//    let viewModel = MainViewModel()
//
//    let navController = UINavigationController()
//
//    let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
//    if let mainVC = storyboard.instantiateViewController(withIdentifier: "mainVC") as? MainVC {
//
//      mainVC.viewModel = viewModel
//
//      navController.viewControllers = [mainVC]
//
//      window?.rootViewController = navController
//
//    }
    
    return true
  }
  
}
