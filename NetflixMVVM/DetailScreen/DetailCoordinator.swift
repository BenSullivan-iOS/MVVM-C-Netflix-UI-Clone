//
//  DetailCoordinator.swift
//  NetflixMVVM
//
//  Created by Ben Sullivan on 30/07/2017.
//  Copyright © 2017 Ben Sullivan. All rights reserved.
//

import UIKit

protocol DetailCoordinatorType: CoordinatorType {
  func start(withMovie movie: Movie)
}

struct DetailCoordinator: DetailCoordinatorType {
  
  let navController: UINavigationController
  
  func start(withMovie movie: Movie) {
    let storyboard = UIStoryboard(name: "Main", bundle: .main)
    if let detailVC = storyboard.instantiateViewController(withIdentifier: "detailVC") as? DetailVC {
      detailVC.viewModel = DetailViewModel(coordinator: self, movie: movie)
      
      navController.pushViewController(detailVC, animated: true)
    }
  }
  
  
  
  init(navController: UINavigationController) {
    self.navController = navController
  }
  
}
