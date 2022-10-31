//
//  DescriptionViewController.swift
//  MovieList
//
//  Created by MASON ROZUMNY on 10/20/22.
//

import UIKit

class DescriptionViewController: UIViewController {

    
    @IBOutlet weak var labelOutlet: UILabel!
    
    @IBOutlet weak var textViewOutlet: UITextView!
    
    var theMovie: Movie!
    override func viewDidLoad() {
        super.viewDidLoad()
        labelOutlet.text = "\(theMovie.name): \(theMovie.movieDescription) \n Rating: \(theMovie.rating)/10"

        
    }
    
    @IBAction func enterButton(_ sender: UIButton)
    {
        if textViewOutlet.text != ""
        {
            theMovie.movieDescription = textViewOutlet.text!
            labelOutlet.text = "\(theMovie.name): \(theMovie.movieDescription) \n Rating: \(theMovie.rating)/10"

        }
        
    }
    
    

   

}
