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
        
        let customNavigationBar = CustomNavigationView()
        customNavigationBar.logoImageView.image = #imageLiteral(resourceName: "AdmissionsTitle")
        collectionView.addSubview(customNavigationBar)
        customNavigationBar.anchorMiniNavBar(view: view)
        
        setupUI()
        
    }
        
        @objc func handleMajorsTab() {
            
            let svc = SFSafariViewController(url: NSURL(string: "https://admissions.ucmerced.edu/academics/majors-minors")! as URL)
            self.present(svc, animated: true, completion: nil)
            
        }
    
        @objc func handleDismiss(){
            dismiss(animated: true, completion: nil)
        }
        
        
        @objc func handleWebsite() {
        
            //open the application in the brower
//            UIApplication.shared.open(URL(string : "http://admissions.ucmerced.edu/")!, options: [:], completionHandler: { (status) in
//
//            })

            //open the link in app while having all the advantages of safari
            let svc = SFSafariViewController(url: NSURL(string: "http://admissions.ucmerced.edu/")! as URL)
            self.present(svc, animated: true, completion: nil)
            
        
    
    }
    
    
}
    
    

