//
//  RegistrarControllerSetup.swift
//  FAARM
//
//  Created by Nathan Huizar on 4/11/18.
//  Copyright © 2018 Christopher Villanueva. All rights reserved.
//

import UIKit


extension RegistrarController {
    
    func setupUI() {
        
        let customNavigationBar = CustomNavigationView()
        customNavigationBar.logoImageView.image = #imageLiteral(resourceName: "Registrar Title-1")
        collectionView.addSubview(customNavigationBar)
        customNavigationBar.anchorMiniNavBar(view: view)
        
        let transcriptsButton = createTranscriptButton(image: #imageLiteral(resourceName: "TranscriptTab"), handler: #selector(handleTranscriptButton))
        let enrollmentButton = createEnrollmentButton(image: #imageLiteral(resourceName: "EnrollVer.png") , handler: #selector(handleEnrollmentButton))
        let registrarButton = createResourceButton(image: #imageLiteral(resourceName: "Registrar Resources"), handler: #selector(handleResourceButton))
        let GPACalculatorButton = createGPACalculatorButton(image: #imageLiteral(resourceName: "GPACalculator"), handler: #selector(handleGPACalculatorButton))
        let websiteButton = createWebsiteButton(image: #imageLiteral(resourceName: "FinAidWebsite.png"), handler: #selector(handleWebsiteButton))
        let backButton = createBackButton(image: #imageLiteral(resourceName: "Back Button White"), handler: #selector(handleDismiss))
        
        view.addSubview(UniversityImageView)
        UniversityImageView.anchor(top: nil, paddingTop: 0, left: view.leftAnchor, paddingLeft: 0, bottom: view.bottomAnchor, paddingBotton: 70, right: view.rightAnchor, paddingRight: 0, width: view.frame.width, height: 80)
        
        view.addSubview(transcriptsButton)
        transcriptsButton.anchor(top: customNavigationBar.bottomAnchor, paddingTop: 30, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 195, width: 0, height: 60)
        
        view.addSubview(enrollmentButton)
        enrollmentButton.anchor(top: transcriptsButton.bottomAnchor, paddingTop: 20, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 30, width: 0, height: 60)
        
        view.addSubview(registrarButton)
        registrarButton.anchor(top: enrollmentButton.bottomAnchor, paddingTop: 20, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 20, width: 0, height: 60)
        
        
        view.addSubview(GPACalculatorButton)
        GPACalculatorButton.anchor(top: registrarButton.bottomAnchor, paddingTop: 20, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 130, width: 0, height: 60)
        
        view.addSubview(websiteButton)
        websiteButton.anchor(top: GPACalculatorButton.bottomAnchor, paddingTop: 20, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 180, width: 0, height: 60)
        
        view.addSubview(backButton)
        backButton.anchor(top: websiteButton.bottomAnchor, paddingTop: 30, left: view.leftAnchor, paddingLeft: 30, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 30, width: 0, height: 40)
    
        
    }
    
    
}
