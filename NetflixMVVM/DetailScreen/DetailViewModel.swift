//
//  DetailViewModel.swift
//  NetflixMVVM
//
//  Created by Ben Sullivan on 30/07/2017.
//  Copyright © 2017 Ben Sullivan. All rights reserved.
//

import Foundation

protocol DetailViewModelType {
  
  var movie: Movie { get set }
}

struct DetailViewModel: DetailViewModelType {
  
  var movie: Movie
  var coordinator: DetailCoordinatorType
  
  init(coordinator: DetailCoordinatorType, movie: Movie) {
    self.movie = movie
    self.coordinator = coordinator
  }
}
