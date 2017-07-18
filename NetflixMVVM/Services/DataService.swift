//
//  DataService.swift
//  NetflixMVVM
//
//  Created by Ben Sullivan on 18/07/2017.
//  Copyright © 2017 Ben Sullivan. All rights reserved.
//

import Foundation

protocol DataService {
  
  func getGenres() -> [Genre]
}

extension DataService {
  
  func getGenres() -> [Genre] {
    
    var movies = [Movie]()
    
    for i in 0...32 {
      movies.append(Movie(imageName: "movie-\(i)"))
    }
    
    var movieArr1 = [Movie]()
    var movieArr2 = [Movie]()
    var movieArr3 = [Movie]()
    var movieArr4 = [Movie]()
    var movieArr5 = [Movie]()
    var movieArr6 = [Movie]()
    
    for i in 0...4 {
      movieArr1.append(movies[i])
    }
    for i in 5...9 {
      movieArr2.append(movies[i])
    }
    for i in 10...14 {
      movieArr3.append(movies[i])
    }
    for i in 15...19 {
      movieArr4.append(movies[i])
    }
    for i in 15...19 {
      movieArr5.append(movies[i])
    }
    for i in 15...19 {
      movieArr6.append(movies[i])
    }
    
    var genres = [Genre]()
    genres.append(Genre(name: "Popular on Netflix", movies: movieArr1))
    genres.append(Genre(name: "Trending Now", movies: movieArr2))
    genres.append(Genre(name: "Romantic Comedies", movies: movieArr3))
    genres.append(Genre(name: "Recently Added", movies: movieArr4))
    genres.append(Genre(name: "Workplace TV Programmes", movies: movieArr5))
    genres.append(Genre(name: "Award- winning TV Shows", movies: movieArr6))
    
    return genres
  }
}
