//
//  TableViewCell.swift
//  Explorers
//
//  Created by Faisal on 13/04/20.
//  Copyright © 2020 Challenge2. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var duration: UILabel!
    
    @IBOutlet weak var type: UILabel!
    @IBOutlet weak var title: UILabel!
    
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

   
}
