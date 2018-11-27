//
//  ViewController.swift
//  FAARM
//
//  Created by Christopher Villanueva on 3/14/18.
//  Copyright © 2018 Christopher Villanueva. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireRSSParser

let bodyId = "bodyId"
let headerId = "headerId"

class HomeController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    // We use these to give the icons their image
    let iconImages = [#imageLiteral(resourceName: "Financial Aid"), #imageLiteral(resourceName: "Admissions"), #imageLiteral(resourceName: "Registrar"), #imageLiteral(resourceName: "Notifications"), #imageLiteral(resourceName: "Calendar"), #imageLiteral(resourceName: "Contact")]
 
    // This function is called whenever an icon is touched or clicked on
    // Which then passes the corresponding icon's item number to
    // handlePresentController(index)
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        handlePresentController(index: indexPath.item)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       setupCollectionView()
    }
}

