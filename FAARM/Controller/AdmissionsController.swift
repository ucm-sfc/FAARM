//
//  AdmissionsController.swift
//  FAARM
//
//  Created by Nathan Huizar on 4/4/18.
//  Copyright © 2018 Christopher Villanueva. All rights reserved.
//

import UIKit
import SafariServices

class AdmissionsController: UICollectionViewController {
    
    let UniversityImageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "UniversityBackground"))
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let collectionView = collectionView else { return }
        collectionView.backgroundColor = .ucmBlue
        
        
        setupUI()
        
    }
        
    @objc func handleFATV() {
    
        let layout = UICollectionViewFlowLayout()
        let fatvController = FATVController(collectionViewLayout: layout)
        present(fatvController, animated: true, completion: nil)
    
    }
    
    @objc func handleHowTo() {
        
        let svc = SFSafariViewController(url: NSURL(string: "https://www.youtube.com/watch?v=8NTTXuPHj5A&list=PL_V0P1jtk44v04RTUEd_BepJwFJ-kyho1")! as URL)
        self.present(svc, animated: true, completion: nil)
        
    }
    
    
        @objc func handleDismiss(){
            dismiss(animated: true, completion: nil)
    }
    
    
    
}
    
    

