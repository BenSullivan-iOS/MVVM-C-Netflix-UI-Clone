//
//  Genre.swift
//  NetflixMVVM
//
//  Created by Ben Sullivan on 18/07/2017.
//  Copyright © 2017 Ben Sullivan. All rights reserved.
//

import Foundation

struct Movie {
  let imageName: String
}

struct Genre {
  let name: String
  let movies: [Movie]
}
