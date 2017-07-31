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
  
  var viewModel: DetailViewModelType?
  
  override func viewDidLoad() {
    
    if let viewModel = viewModel {
      coverImage.image = UIImage(named: viewModel.movie.imageName)
    }
  }
}
