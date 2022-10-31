//
//  ViewController.swift
//  MovieList
//
//  Created by MASON ROZUMNY on 10/19/22.
//

import UIKit

class ViewController2: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    @IBOutlet weak var enterMovieOutlet: UITextField!
    
    @IBOutlet weak var releaseYearOutlet: UITextField!
    
    @IBOutlet weak var yourRatingOutlet: UITextField!
    
    
    
    var movies: [Movie] = [Movie]()
    
    var selectedMovie: Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        
        movies.append(Movie(name: "Jeen-yuhs: A Kanye Trilogy", releaseDate: 2022, rating: 10, movieDescription: " A documentary on the life or Kanye West, the greatest rapper"))
        movies.append(Movie(name: "Avengers Endgame", releaseDate: 2019, rating: 10, movieDescription: " The sequel to Infinity War and pulls together all the loose ends from Infinity War"))
        movies.append(Movie(name: "Star Wars", releaseDate: 1977, rating: 9, movieDescription: " A series of movies about Luke Skywalker who becomes a jedi"))
        movies.append(Movie(name: "The Peanuts Movie", releaseDate: 2015, rating: 7, movieDescription: " A movie about Charlie Brown and the other Peanuts characters. Charlie Brown writes his name on the wrong test and accidentaly gets a 100"))
        movies.append(Movie(name: "Step-Brothers", releaseDate: 2008, rating: 8, movieDescription: " A movie about step-brothers that are trying to get along when their parents move in with each other"))
        movies.append(Movie(name: "El Camino", releaseDate: 2019, rating: 10, movieDescription: " A movie following the events of Breaking Bad"))
        movies.append(Movie(name: "Spider Man No Way Home", releaseDate: 2021, rating: 9, movieDescription: " The third and final movie in Tom Holland's spider man series"))
        movies.append(Movie(name: "Miracle", releaseDate: 2004, rating: 10, movieDescription: " A documentary about the USA olympic hockey tem that beat the powerhouse Russia"))
        movies.append(Movie(name: "The God Father", releaseDate: 1972, rating: 8, movieDescription: " A movie about a mafia boss"))
        movies.append(Movie(name: "Goodfellas", releaseDate: 1990, rating: 8, movieDescription: " A movie about a kid who joined a mafia"))
        movies.append(Movie(name: "Minions: The Rise of Gru", releaseDate: 2022, rating: 10, movieDescription: " The sequel to Minions and shows how Gru became evil"))
        movies.append(Movie(name: "Minions", releaseDate: 2015, rating: 10, movieDescription: " The first movie in the Minions series"))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")! as! CustomCell
        
        cell.configure(movie: movies[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        selectedMovie = movies[indexPath.row]
        performSegue(withIdentifier: "theSegue", sender: self)
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete
        {
            movies.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    
    @IBAction func addButton(_ sender: UIBarButtonItem)
    {
        movies.append(Movie(name: enterMovieOutlet.text!, releaseDate: Int(releaseYearOutlet.text!)!, rating: Int(yourRatingOutlet.text!)!, movieDescription: " No available description"))
        tableViewOutlet.reloadData()

    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        
        let nvc = segue.destination as! DescriptionViewController2
        nvc.theMovie = selectedMovie
    }
    

    
    
}

