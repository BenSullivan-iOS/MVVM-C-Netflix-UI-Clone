//
//  ViewController.swift
//  NetflixMVVM
//
//  Created by Ben Sullivan on 18/07/2017.
//  Copyright © 2017 Ben Sullivan. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
  
  var viewModel: MainViewModelType?
  
}

extension MainVC: MovieCellDelegate {
  func itemSelected(movie: Movie) {
    viewModel?.transition(toMovie: movie)
  }
}

extension MainVC: UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 1
  }
  
  func numberOfSections(in tableView: UITableView) -> Int {
    return viewModel?.genres.count ?? 0
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MovieTableCell
    
    if let genre = viewModel?.genres[indexPath.section] {
      cell.configureCell(withGenre: genre)
      cell.delegate = self
    }

    return cell
  }
  
}

extension MainVC: UITableViewDelegate {
  
  func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    return 30
  }
  
  func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    
    let hOrigin = CGPoint(x: 0, y: 0)
    let hSize = CGSize(width: 300, height: CGFloat(30))
    let hFrame = CGRect(origin: hOrigin, size: hSize)
    let hView = UIView(frame: hFrame)
    hView.backgroundColor = .black
    
    let titleLabel = UILabel()
    titleLabel.frame = hView.frame
    titleLabel.textColor = .white
    titleLabel.text = viewModel?.genres[section].name ?? ""
    titleLabel.font = UIFont.boldSystemFont(ofSize: 15)
    
    hView.addSubview(titleLabel)
    
    return hView
  }
}


