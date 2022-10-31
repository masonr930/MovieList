//
//  Movie.swift
//  MovieList
//
//  Created by MASON ROZUMNY on 10/24/22.
//

import Foundation

public class Movie
{
    var name = ""
    var releaseDate = 0
    var rating = 0
    var movieDescription = ""
    init(name: String, releaseDate: Int, rating: Int, movieDescription: String)
    {
        self.name = name
        self.releaseDate = releaseDate
        self.rating = rating
        self.movieDescription = movieDescription
    }
    
}
