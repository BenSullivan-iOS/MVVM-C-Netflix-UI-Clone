//
//  DetailVC.swift
//  NetflixMVVM
//
//  Created by Ben Sullivan on 30/07/2017.
//  Copyright © 2017 Ben Sullivan. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
  
  @IBOutlet weak var coverImage: UIImageView!
  @IBOutlet weak var movieTitle: UILabel!
  
  var viewModel: DetailViewModelType?
  override func viewDidLoad() {

    
    if let viewModel = viewModel {

      dump(viewModel.movie)
      
      movieTitle.text = viewModel.movie.imageName
      coverImage.image = UIImage(named: viewModel.movie.imageName)
    }
  }
}
