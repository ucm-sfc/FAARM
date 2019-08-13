//
//  FATVController.swift
//  FAARM
//
//  Created by Nathan Huizar on 1/18/19.
//  Copyright © 2019 Christopher Villanueva. All rights reserved.
//

import UIKit
import SafariServices

class FATVController: UICollectionViewController {
    
    let UniversityImageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "UniversityBackground"))
        imageView.contentMode = .scaleToFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let collectionView = collectionView else { return }
        collectionView.backgroundColor = .ucmBlue
        
        setupUI()
        
    }
    
    @objc func handleSpanishButton() {
        let svc = SFSafariViewController(url: NSURL(string: "https://ucmerced.financialaidtv.com/es")! as URL)
        self.present(svc, animated: true, completion: nil)
        
    }
    
    
    @objc func handleDismiss(){
        dismiss(animated: true, completion: nil)
    }
    
    
    @objc func handleEnglishButton() {
        
        let svc = SFSafariViewController(url: NSURL(string: "https://ucmerced.financialaidtv.com/")! as URL)
        self.present(svc, animated: true, completion: nil)
        
    }
    
    
    
    
    
}
