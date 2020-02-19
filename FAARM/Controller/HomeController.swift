//
//  ViewController.swift
//  FAARM
//
//  Created by Christopher Villanueva on 3/14/18.
//  Copyright © 2018 Christopher Villanueva. All rights reserved.
//

import UIKit

let bodyId = "bodyId"
let headerId = "headerId"

class HomeController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    // We use these to give the icons their image
    let iconImages = [#imageLiteral(resourceName: "Billing-3.png"), #imageLiteral(resourceName: "Tutorials-4.png"), #imageLiteral(resourceName: "Registrar"), #imageLiteral(resourceName: "Campus maps-1.png"), #imageLiteral(resourceName: "Calendar"), #imageLiteral(resourceName: "Contact")]
 
    // This function is called whenever an icon is touched or clicked on
    // Which then passes the corresponding icon's item number to
    // handlePresentController(index)
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        handlePresentController(index: indexPath.item)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
      return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
    }
}

