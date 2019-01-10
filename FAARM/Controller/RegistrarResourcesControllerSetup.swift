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
        
        let transcriptsButton = createTranscriptButton(image: #imageLiteral(resourceName: "TranscriptTab"), handler: #selector(handleTranscriptButton))
        let GPACalculatorButton = createGPACalculatorButton(image: #imageLiteral(resourceName: "GPACalculator"), handler: #selector(handleGPACalculatorButton))
        let courseScheduleButton = createCourseScheduleButton(image: #imageLiteral(resourceName: "CourseSchedule"), handler: #selector(handleCourseScheduleButton))
        let academicCalendarButton = createAcademicCalendarButton(image: #imageLiteral(resourceName: "AcademicCalendar"), handler: #selector(handleAcademicCalendarButton))
        let backButton = createBackButton(image: #imageLiteral(resourceName: "Back Button White"), handler: #selector(handleDismiss))
        
        view.addSubview(UniversityImageView)
        UniversityImageView.anchor(top: nil, paddingTop: 0, left: view.leftAnchor, paddingLeft: 0, bottom: view.bottomAnchor, paddingBotton: 80, right: view.rightAnchor, paddingRight: 0, width: view.frame.width, height: 80)
        
        view.addSubview(transcriptsButton)
        transcriptsButton.anchor(top: view.topAnchor, paddingTop: 120, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 190, width: 0, height: 60)
        
        view.addSubview(GPACalculatorButton)
        GPACalculatorButton.anchor(top: view.topAnchor, paddingTop: 200, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 130, width: 0, height: 60)
        
        view.addSubview(courseScheduleButton)
        courseScheduleButton.anchor(top: view.topAnchor, paddingTop: 280, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 100, width: 0, height: 60)
        
        view.addSubview(academicCalendarButton)
        academicCalendarButton.anchor(top: view.topAnchor, paddingTop: 360, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 50, width: 0, height: 60)
        
        view.addSubview(backButton)
        backButton.anchor(top: academicCalendarButton.bottomAnchor, paddingTop: 30, left: view.leftAnchor, paddingLeft: 30, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 30, width: 0, height: 40)
        
        
    }
    
    
}

