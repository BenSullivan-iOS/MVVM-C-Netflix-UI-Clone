//
//  AppCoordinator.swift
//  NetflixMVVM
//
//  Created by Ben Sullivan on 18/07/2017.
//  Copyright © 2017 Ben Sullivan. All rights reserved.
//

import UIKit

struct AppCoordinator: CoordinatorType {
  
  let window: UIWindow
  
  init(window: UIWindow) {
    self.window = window
  }
  
  func start() {
    
    var navController = UINavigationController()
    navController.navigationBar.barStyle = .black
    
    let mainCoordinator = MainCoordinator(navController: navController)
    mainCoordinator.start()
    
    styleNavController(navController: &navController)
    
    window.rootViewController = navController
    
  }
  
  private func styleNavController(navController: inout UINavigationController) {
    
    let button = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.search, target: self, action: "someAction")
    button.tintColor = .white
    navController.navigationBar.topItem?.rightBarButtonItem = button
    
    let logo = #imageLiteral(resourceName: "netflixLogo")
    let imageView = UIImageView(image:logo)
    imageView.contentMode = .center
    navController.navigationBar.topItem?.titleView = imageView
  }
}
