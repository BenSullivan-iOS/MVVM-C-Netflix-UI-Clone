//
//  MainViewModel.swift
//  NetflixMVVM
//
//  Created by Ben Sullivan on 18/07/2017.
//  Copyright © 2017 Ben Sullivan. All rights reserved.
//

import Foundation

protocol MainViewModelType {
  var genres: [Genre] { get set }
  func transition(toMovie movie: Movie)
}

struct MainViewModel: MainViewModelType, DataService {
  
  var genres = [Genre]()
  var coordinator: MainCoordinatorType?
  
  init(coordinator: MainCoordinatorType) {
    self.genres = getGenres()
    self.coordinator = coordinator
  }
  
  func transition(toMovie movie: Movie) {
    coordinator?.transition(toScreen: .detail, withMovie: movie)
  }
  
}
