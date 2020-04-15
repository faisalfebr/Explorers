//
//  TableViewController.swift
//  Explorers
//
//  Created by Faisal on 13/04/20.
//  Copyright © 2020 Challenge2. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    var arrayofjourney:[journey] = journeyManage.init().arrayofjourney
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView()

        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayofjourney.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        cell.photo.image = UIImage(named: (arrayofjourney[indexPath.row].imagename))
        cell.title.text = arrayofjourney[indexPath.row].challenge
        cell.type.text = arrayofjourney[indexPath.row].isteam
        cell.duration.text = arrayofjourney[indexPath.row].duration
        return cell
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if let ReviewChallengeViewController = segue.destination as? ReviewChallengeViewController {
            ReviewChallengeViewController.images = (arrayofjourney[tableView.indexPathForSelectedRow!.row].imagename)
           // ReviewChallengeViewController = arrayofjourney[tableView.indexPathForSelectedRow!.row]
            
            
        }
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
