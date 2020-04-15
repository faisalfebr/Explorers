//
//  ReviewChallengeViewController.swift
//  Explorers
//
//  Created by Faisal on 15/04/20.
//  Copyright © 2020 Challenge2. All rights reserved.
//

import UIKit

class ReviewChallengeViewController: UIViewController {

    @IBOutlet weak var imageReview: UIImageView!
    
    
    
    
    var images:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageReview.image = UIImage(named: images)
        
        // Do any additional setup after loading the view.
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
