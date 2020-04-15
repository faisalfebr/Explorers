//
//  allSeniorViewController.swift
//  Explorers
//
//  Created by Faisal on 15/04/20.
//  Copyright © 2020 Challenge2. All rights reserved.
//

import UIKit

class allSeniorViewController: UIViewController {
    
    let explorerArray = ExplorerManager.sharedManager.allDataExplorerss()
    var allDataSenior = ExplorerManager.sharedManager.allDataExplorerss()
    var filterData = ExplorerManager.sharedManager.allDataExplorerss()
    
    @IBOutlet weak var searchAllSenior: UISearchBar!
    @IBOutlet weak var allSeniorView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        allSeniorView.dataSource = self
        allSeniorView.delegate = self
        filterData = explorerArray.filter({explorerArray -> Bool in explorerArray.grade == "Senior"})
        allDataSenior = filterData
        searchAllSenior.delegate = self
               
        // Do any additional setup after loading the view.
    }
    

}
extension allSeniorViewController: UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return allDataSenior.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let allCellSenior = allSeniorView.dequeueReusableCell(withReuseIdentifier: "allCellSenior", for: indexPath) as! allSeniorCollectionViewCell
        let indexing = indexPath.item
            allCellSenior.nameSenior.text = allDataSenior[indexing].name
            allCellSenior.roleSenior.text = allDataSenior[indexing].role
            allCellSenior.seniorImage.image = UIImage(named: allDataSenior[indexing].foto!)
            
        return allCellSenior
    }
    
    
}
extension allSeniorViewController : UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 4, left: 4, bottom: 8, right: 4)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let bounds = collectionView.bounds
        let heightVal = self.view.frame.height
        let widthVal = self.view.frame.width
        let cellsize = (heightVal < widthVal) ?  bounds.height/2 : bounds.width/2
        
        return CGSize(width: cellsize - 10   , height:  cellsize - 10  )
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 7
    }
}
extension allSeniorViewController: UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        allDataSenior = filterData.filter({filterData -> Bool in
            switch searchBar.selectedScopeButtonIndex{
            case 0 :
                if searchText.isEmpty {
                    return true
                }
                return filterData.name!.lowercased().contains(searchText.lowercased())
            default: return false
            }
        })
        allSeniorView.reloadData()
    }
}
