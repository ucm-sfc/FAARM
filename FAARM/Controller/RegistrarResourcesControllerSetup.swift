//
//  RegistrarResourcesControllerSetup.swift
//  FAARM
//
//  Created by Nathan Huizar on 1/9/19.
//  Copyright © 2019 Christopher Villanueva. All rights reserved.
//

import UIKit


extension RegistrarResourcesController {
    
    func setupUI() {
        
        let customNavigationBar = CustomNavigationView()
        customNavigationBar.logoImageView.image = #imageLiteral(resourceName: "Registrar Title-1")
        collectionView.addSubview(customNavigationBar)
        customNavigationBar.anchorMiniNavBar(view: view)

        let courseScheduleButton = createCourseScheduleButton(image: #imageLiteral(resourceName: "CourseSchedule"), handler: #selector(handleCourseScheduleButton))
        let academicCalendarButton = createAcademicCalendarButton(image: #imageLiteral(resourceName: "AcademicCalendar"), handler: #selector(handleAcademicCalendarButton))
        let backButton = createBackButton(image: #imageLiteral(resourceName: "Back Button White"), handler: #selector(handleDismiss))
        
        view.addSubview(UniversityImageView)
        UniversityImageView.anchor(top: nil, paddingTop: 0, left: view.leftAnchor, paddingLeft: 0, bottom: view.bottomAnchor, paddingBotton: 70, right: view.rightAnchor, paddingRight: 0, width: view.frame.width, height: 80)
        
        
        view.addSubview(courseScheduleButton)
        courseScheduleButton.anchor(top: customNavigationBar.bottomAnchor, paddingTop: 30, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 100, width: 0, height: 60)
        
        view.addSubview(academicCalendarButton)
        academicCalendarButton.anchor(top: courseScheduleButton.bottomAnchor, paddingTop: 20, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 50, width: 0, height: 60)
        
        view.addSubview(backButton)
        backButton.anchor(top: academicCalendarButton.bottomAnchor, paddingTop: 30, left: view.leftAnchor, paddingLeft: 30, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 30, width: 0, height: 40)
        
        
    }
    
    
}

