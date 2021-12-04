//
//  SecondMovieDetailsViewController.swift
//  Flix App
//
//  Created by Rodrigo Martinez on 12/3/21.
//

import UIKit
import AlamofireImage

class SecondMovieDetailsViewController: UIViewController {
    
    var movie: [String:Any]!

    @IBOutlet weak var secondBackdropImageView: UIImageView!
    @IBOutlet weak var secondPosterView: UIImageView!
    @IBOutlet weak var secondTitleLabel: UILabel!
    @IBOutlet weak var secondSynopsisLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        secondTitleLabel.text =  movie["title"] as? String
        secondSynopsisLabel.text = movie["overview"] as? String
        
        secondTitleLabel.sizeToFit()
        secondSynopsisLabel.sizeToFit()
        
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        
        secondPosterView.af.setImage(withURL: posterUrl!)
        
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
        
        secondBackdropImageView.af.setImage(withURL: backdropUrl!)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
