//
//  RegistrarResourcesController.swift
//  FAARM
//
//  Created by Nathan Huizar on 1/9/19.
//  Copyright © 2019 Christopher Villanueva. All rights reserved.
//

import UIKit
import SafariServices

class RegistrarResourcesController: UICollectionViewController {
    
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
    
    @objc func handleCourseScheduleButton() {
        let svc = SFSafariViewController(url: NSURL(string: "https://mystudentrecord.ucmerced.edu/pls/PROD/xhwschedule.p_selectsubject")! as URL)
        self.present(svc, animated: true, completion: nil)
    }
    
    @objc func handleAcademicCalendarButton() {
        let svc = SFSafariViewController(url: NSURL(string: "https://registrar.ucmerced.edu/schedules/calendars")! as URL)
        self.present(svc, animated: true, completion: nil)
    }
    
    @objc func handleDismiss(){
        dismiss(animated: true, completion: nil)
    }

}
