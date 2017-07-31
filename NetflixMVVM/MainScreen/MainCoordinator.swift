//
//  MainCoordinator.swift
//  NetflixMVVM
//
//  Created by Ben Sullivan on 18/07/2017.
//  Copyright © 2017 Ben Sullivan. All rights reserved.
//

import UIKit

protocol MainCoordinatorType: CoordinatorType {
  func transition(toScreen screen: Screen, withMovie: Movie)
}

struct MainCoordinator: MainCoordinatorType {
  
  let navController: UINavigationController
  
  init(navController: UINavigationController) {
    self.navController = navController
  }
  
  func start() {
    let storyboard = UIStoryboard(name: "Main", bundle: .main)
    if let mainVC = storyboard.instantiateViewController(withIdentifier: "mainVC") as? MainVC {
      mainVC.viewModel = MainViewModel(coordinator: self)
      
      navController.viewControllers = [mainVC]
    }
  }
  
  func transition(toScreen screen: Screen, withMovie: Movie) {
    
    switch screen {
    case .detail:
      let coordinator = DetailCoordinator(navController: navController)
      coordinator.start(withMovie: withMovie)
    }
  }
  
  func transition(toMovie: Movie) {
//    let vc = UIViewController()
//    vc.view.backgroundColor = .yellow
//    let imageView = UIImageView()
//    imageView.frame = vc.view.frame
//    imageView.image = UIImage(named: toMovie.imageName)
//    vc.view.addSubview(imageView)
//    navController.present(vc, animated: true)
    
  }
}
