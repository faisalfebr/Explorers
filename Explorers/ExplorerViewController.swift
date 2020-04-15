//
//  ExplorerViewController.swift
//  Explorers
//
//  Created by Faisal on 15/04/20.
//  Copyright © 2020 Challenge2. All rights reserved.
//

import UIKit

class ExplorerViewController: UIViewController {

    @IBOutlet weak var collectionSenior: UICollectionView!
    
    @IBOutlet weak var collectionJunior: UICollectionView!
    
    let explorerArray = ExplorerManager.sharedManager.allDataExplorerss()
    var dataSenior = ExplorerManager.sharedManager.allDataExplorerss()
    var dataJunior = ExplorerManager.sharedManager.allDataExplorerss()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionSenior.delegate = self
        collectionJunior.delegate = self
        collectionJunior.dataSource = self
        collectionSenior.dataSource = self
        
        dataSenior = explorerArray.filter({explorerArray -> Bool in explorerArray.grade == "Senior"})
        let randomSenior = dataSenior.shuffled()
        dataSenior = randomSenior
        dataJunior = explorerArray.filter({explorerArray -> Bool in explorerArray.grade == "Junior"})
        let randomJunior = dataJunior.shuffled()
        dataSenior = randomJunior
        
        

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
extension ExplorerViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellSenior = collectionSenior.dequeueReusableCell(withReuseIdentifier: "seniorCell", for: indexPath) as! SeniorCollectionViewCell
        
        let indexing = indexPath.item
        
        if(collectionView == collectionJunior){
        let cellJunior = collectionJunior.dequeueReusableCell(withReuseIdentifier: "juniorCell", for: indexPath) as! JuniorCollectionViewCell
        
            cellJunior.nameJunior.text = dataJunior[indexing].name
            cellJunior.roleJunior.text = dataJunior[indexing].role
            cellJunior.juniorImage.image = UIImage(named: dataJunior[indexing].foto!)
            
        return cellJunior
        }
        
       cellSenior.nameSenior.text = dataSenior[indexing].name
        cellSenior.roleSenior.text = dataJunior[indexing].role
        cellSenior.seniorImage.image = UIImage(named: dataSenior[indexing].foto!)
        
        
        return cellSenior
    }
    
    
}
extension ExplorerViewController : UICollectionViewDelegateFlowLayout {
    
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
