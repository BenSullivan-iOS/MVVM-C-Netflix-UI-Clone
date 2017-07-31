//
//  CoordinatorType.swift
//  NetflixMVVM
//
//  Created by Ben Sullivan on 31/07/2017.
//  Copyright © 2017 Ben Sullivan. All rights reserved.
//

protocol CoordinatorType {
  func start()
  func transition(toScreen screen: Screen)
}

extension CoordinatorType {
  func transition(toScreen screen: Screen) { }
  func start() { }
}
