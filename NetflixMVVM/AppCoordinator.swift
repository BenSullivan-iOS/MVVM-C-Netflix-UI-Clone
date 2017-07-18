//
//  AppCoordinator.swift
//  NetflixMVVM
//
//  Created by Ben Sullivan on 18/07/2017.
//  Copyright © 2017 Ben Sullivan. All rights reserved.
//

import UIKit

protocol CoordinatorType {
  func start()
  func transition(toMovie: Movie)
}

extension CoordinatorType {
  func transition(toMovie: Movie) { }
}

struct AppCoordinator: CoordinatorType {
  
  let window: UIWindow
  
  func start() {
    
    let storyboard = UIStoryboard(name: "Main", bundle: .main)
    if let mainVC = storyboard.instantiateViewController(withIdentifier: "mainVC") as? MainVC {
      
      let navController = UINavigationController()
      navController.viewControllers = [mainVC]
      navController.navigationBar.tintColor = .darkGray
      navController.navigationBar.backgroundColor = .darkGray
      navController.navigationBar.barStyle = .black
      
      let coordinator = MainCoordinator(navController: navController)
      mainVC.viewModel = MainViewModel(coordinator: coordinator)
      
      let button = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.search, target: self, action: "someAction")
      button.tintColor = .white
      navController.navigationBar.topItem?.rightBarButtonItem = button
      
      let logo = #imageLiteral(resourceName: "netflixLogo")
      let imageView = UIImageView(image:logo)
      imageView.contentMode = .center
      navController.navigationBar.topItem?.titleView = imageView
      
      window.rootViewController = navController
      
    }
  }
  
  init(window: UIWindow) {
    self.window = window
  }
}
