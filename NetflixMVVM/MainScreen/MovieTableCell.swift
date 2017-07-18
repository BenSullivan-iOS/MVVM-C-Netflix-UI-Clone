//
//  MovieTableCell.swift
//  NetflixMVVM
//
//  Created by Ben Sullivan on 18/07/2017.
//  Copyright © 2017 Ben Sullivan. All rights reserved.
//

import UIKit

protocol MovieCellDelegate {
  func itemSelected(movie: Movie)
}

class MovieTableCell: UITableViewCell {
  
  @IBOutlet weak var colletionView: UICollectionView!
  
  var delegate: MovieCellDelegate?
  
  var genre = Genre(name: "str", movies: [Movie(imageName: "movie-1")])
  
  override func awakeFromNib() {
    colletionView.dataSource = self
    colletionView.delegate = self
  }
  
}

extension MovieTableCell: UICollectionViewDataSource {
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return genre.movies.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! MovieCollectionCell

    cell.mainImage.image = UIImage(named: genre.movies[indexPath.row].imageName)
    
    return cell
  }
  
}

extension MovieTableCell: UICollectionViewDelegate {
  
  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    
    delegate?.itemSelected(movie: genre.movies[indexPath.row])
  }
}
