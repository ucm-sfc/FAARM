//
//  RegistrarController.swift
//  FAARM
//
//  Created by Christopher Villanueva on 3/30/18.
//  Copyright © 2018 Christopher Villanueva. All rights reserved.
//

import UIKit
import SafariServices

class RegistrarController: UICollectionViewController {
    
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
        customNavigationBar.logoImageView.image = #imageLiteral(resourceName: "Registrar Title-1")
        collectionView.addSubview(customNavigationBar)
        customNavigationBar.anchorMiniNavBar(view: view)
        
        setupUI()
        
    }
    
    @objc func handleResourceButton() {
        let comingSoonAlert = UIAlertController(title: "Coming Soon", message: "This feature will be implemented at a later date", preferredStyle: .alert)
        comingSoonAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(comingSoonAlert, animated: true, completion: nil)
       
        
    }
    
    @objc func handleTutorialsButton() {
        let comingSoonAlert = UIAlertController(title: "Coming Soon", message: "This feature will be implemented at a later date", preferredStyle: .alert)
        comingSoonAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(comingSoonAlert, animated: true, completion: nil)
    }
    
    @objc func handleWebsiteButton() {
        
        let svc = SFSafariViewController(url: NSURL(string: "http://registrar.ucmerced.edu/")! as URL)
        self.present(svc, animated: true, completion: nil)
        
    }
    
    @objc func handleDismiss(){
        dismiss(animated: true, completion: nil)
    }
    
    
}

