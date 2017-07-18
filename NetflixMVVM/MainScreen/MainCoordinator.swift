//
//  MainCoordinator.swift
//  NetflixMVVM
//
//  Created by Ben Sullivan on 18/07/2017.
//  Copyright © 2017 Ben Sullivan. All rights reserved.
//

import UIKit

struct MainCoordinator: CoordinatorType {
  
  let navController: UINavigationController
  
  init(navController: UINavigationController) {
    self.navController = navController
  }
  
  func start() {
    
  }
  
  func transition(toMovie: Movie) {
    let vc = UIViewController()
    navController.present(vc, animated: true)
    
  }
}
