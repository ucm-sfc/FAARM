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
        
        let layout = UICollectionViewFlowLayout()
        let registrarResourcesController = RegistrarResourcesController(collectionViewLayout: layout)
        present(registrarResourcesController, animated: true, completion: nil)
       
        
    }
    
    @objc func handleTutorialsButton() {
        let svc = SFSafariViewController(url: NSURL(string: "https://www.youtube.com/watch?v=8NTTXuPHj5A&list=PL_V0P1jtk44v04RTUEd_BepJwFJ-kyho1")! as URL)
        self.present(svc, animated: true, completion: nil)
    }
    
    @objc func handleWebsiteButton() {
        
        let svc = SFSafariViewController(url: NSURL(string: "http://registrar.ucmerced.edu/")! as URL)
        self.present(svc, animated: true, completion: nil)
        
    }
    
    @objc func handleDismiss(){
        dismiss(animated: true, completion: nil)
    }
    
    
}

