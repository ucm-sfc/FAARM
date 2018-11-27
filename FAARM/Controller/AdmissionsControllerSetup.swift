//
//  AdmissionsControllerSetup.swift
//  FAARM
//
//  Created by Nathan Huizar on 4/5/18.
//  Copyright © 2018 Christopher Villanueva. All rights reserved.
//

import UIKit

extension AdmissionsController {


    func setupUI() {
        
        //adds the university image to the pages 
        view.addSubview(UniversityImageView)
        UniversityImageView.anchor(top: nil, paddingTop: 0, left: view.leftAnchor, paddingLeft: 0, bottom: view.bottomAnchor, paddingBotton: 80, right: view.rightAnchor, paddingRight: 0, width: view.frame.width, height: 80)
        
        let majorsButton = createAdmissionsButton(image: #imageLiteral(resourceName: "Admissions-Majors Tab"), handler: #selector(handleMajorsTab))
        let websiteButton = createAdmissionsButton(image: #imageLiteral(resourceName: "AdmissionsWebsitetab"), handler: #selector(handleWebsite))
        let backButton = createBackButton(image: #imageLiteral(resourceName: "Back Button White"), handler: #selector(handleDismiss))
        
        
        //add majors button to the screen
        view.addSubview(majorsButton)
        majorsButton.anchor(top: view.topAnchor, paddingTop: 120, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 80, width: 0, height: 50)
        
        view.addSubview(websiteButton)
        websiteButton.anchor(top: view.topAnchor, paddingTop: 190, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 50, width: 0, height: 50)
        
        view.addSubview(backButton)
        backButton.anchor(top: websiteButton.bottomAnchor, paddingTop: 30, left: view.leftAnchor, paddingLeft: 30, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 30, width: 0, height: 40)
        
    }



}


