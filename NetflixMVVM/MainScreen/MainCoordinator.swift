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
    let storyboard = UIStoryboard(name: "Main", bundle: .main)
    if let mainVC = storyboard.instantiateViewController(withIdentifier: "mainVC") as? MainVC {
      mainVC.viewModel = MainViewModel(coordinator: self)
      
      navController.viewControllers = [mainVC]
    }
  }
  
  func transition(toMovie: Movie) {
    let vc = UIViewController()
    vc.view.backgroundColor = .yellow
    let imageView = UIImageView()
    imageView.frame = vc.view.frame
    imageView.image = UIImage(named: toMovie.imageName)
    vc.view.addSubview(imageView)
    navController.present(vc, animated: true)
    
  }
}
