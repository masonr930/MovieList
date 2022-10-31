//
//  CustomCell.swift
//  MovieList
//
//  Created by MASON ROZUMNY on 10/27/22.
//

import Foundation
import UIKit


class CustomCell: UITableViewCell
{
    @IBOutlet weak var movieNameOutlet: UILabel!
    
    @IBOutlet weak var releaseYearOutlet: UILabel!
    
    @IBOutlet weak var ratingOutlet: UILabel!
    
    func configure(movie: Movie)
    {
        movieNameOutlet.text = movie.name
        releaseYearOutlet.text = String(movie.releaseDate)
        ratingOutlet.text = String(movie.rating)
    }
    
    
}
