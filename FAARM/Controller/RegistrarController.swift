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
    
    @objc func handleTranscriptButton() {
    
        let svc = SFSafariViewController(url: NSURL(string: "https://registrar.ucmerced.edu/services/transcripts")! as URL)
        self.present(svc, animated: true, completion: nil)
    
    }
    
    @objc func handleEnrollmentButton() {
        
        let svc = SFSafariViewController(url: NSURL(string: "https://registrar.ucmerced.edu/services/verifications#Enroll")! as URL)
        self.present(svc, animated: true, completion: nil)
        
    }
    
    @objc func handleResourceButton() {
        
        let layout = UICollectionViewFlowLayout()
        let registrarResourcesController = RegistrarResourcesController(collectionViewLayout: layout)
        present(registrarResourcesController, animated: true, completion: nil)
        
    }
    
    @objc func handleGPACalculatorButton() {
        
        let svc = SFSafariViewController(url: NSURL(string: "https://registrar.ucmerced.edu/policies/grades/gpa-calculator")! as URL)
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

