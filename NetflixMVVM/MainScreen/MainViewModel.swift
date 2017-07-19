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
  func transition(toMovie: Movie)
}

struct MainViewModel: MainViewModelType, DataService {
  
  var genres = [Genre]()
  var coordinator: CoordinatorType?
  
  init(coordinator: CoordinatorType) {
    self.genres = getGenres()
    self.coordinator = coordinator
  }
  
  func transition(toMovie: Movie) {
    coordinator?.transition(toMovie: toMovie)
  }
  
}
