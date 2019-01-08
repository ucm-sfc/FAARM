//
//  FinAidController.swift
//  FAARM
//
//  Created by Nathan Huizar on 4/4/18.
//  Copyright © 2018 Christopher Villanueva. All rights reserved.
//

import UIKit
import SafariServices

class FinAidController: UICollectionViewController {
    
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
        
        let customNavigationBar = CustomNavigationView()
        customNavigationBar.logoImageView.contentMode = .scaleAspectFit
        customNavigationBar.logoImageView.image = #imageLiteral(resourceName: "FinAidTitle")
        collectionView.addSubview(customNavigationBar)
        customNavigationBar.anchorMiniNavBar(view: view)
        
        
        setupUI()
        
    }
    
    @objc func handleDirectCostWorksheet() {
        let svc = SFSafariViewController(url: NSURL(string: "https://finaidapps.ucmerced.edu/DirectCostWorksheet/index.cfm")! as URL)
        self.present(svc, animated: true, completion: nil)
        
    }
    
    
    @objc func handleDismiss(){
        dismiss(animated: true, completion: nil)
    }
    
    
    @objc func handleFinAidForms() {
        
        let svc = SFSafariViewController(url: NSURL(string: "http://financialaid.ucmerced.edu/forms/2018-2019")! as URL)
        self.present(svc, animated: true, completion: nil)
//
//        let finAidFormController = FinAidFormController()
//        present(finAidFormController, animated: true, completion: nil)
    }
    
    
    @objc func handleFinWebsite() {
        
        let svc = SFSafariViewController(url: NSURL(string: "http://financialaid.ucmerced.edu/")! as URL)
        self.present(svc, animated: true, completion: nil)
        
        
        }
    
    
}



