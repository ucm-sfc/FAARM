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
    
    @objc func handleDirectCostWorksheet() {
        let svc = SFSafariViewController(url: NSURL(string: "https://finaidapps.ucmerced.edu/DirectCostWorksheet/index.cfm")! as URL)
        self.present(svc, animated: true, completion: nil)
    }
    
    @objc func handleTF() {
        let svc = SFSafariViewController(url: NSURL(string: "https://faarm-1523150252332.firebaseapp.com/feeSchedule.html")! as URL)
        self.present(svc, animated: true, completion: nil)
        
        /*
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let tfController = TFController(collectionViewLayout: layout)
        present(tfController, animated: true, completion: nil)
 */
    }
    
    @objc func handleCOA() {
        let svc = SFSafariViewController(url: NSURL(string: "http://financialaid.ucmerced.edu/cost-attendance")! as URL)
        self.present(svc, animated: true, completion: nil)
    }
    
    @objc func handleDPP() {
        let svc = SFSafariViewController(url: NSURL(string: "https://bfs.ucmerced.edu/deptstaff-directory/financial-accounting-services/student-business-services/deferred-payment-plan")! as URL)
        self.present(svc, animated: true, completion: nil)
    }
    
    @objc func handleDismiss(){
        dismiss(animated: true, completion: nil)
    }
    
    @objc func handleFinAidForms() {
        let svc = SFSafariViewController(url: NSURL(string: "https://financialaid.ucmerced.edu/forms")! as URL)
        self.present(svc, animated: true, completion: nil)
    }
}
