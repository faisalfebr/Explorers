//
//  ViewController.swift
//  Explorers
//
//  Created by Faisal on 13/04/20.
//  Copyright © 2020 Challenge2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let explorerArray = ExplorerManager.sharedManager.allDataExplorerss()
        for i in 0...explorerArray.count-1{
            print(explorerArray[i].name!)
        }
        // Do any additional setup after loading the view.
    }


}

