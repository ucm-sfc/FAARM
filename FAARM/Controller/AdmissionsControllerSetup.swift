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
        
        let customNavigationBar = CustomNavigationView()
        customNavigationBar.logoImageView.image = #imageLiteral(resourceName: "TutorialTitle.png")
        collectionView.addSubview(customNavigationBar)
        customNavigationBar.anchorMiniNavBar(view: view)
        
        //adds the university image to the pages 
        view.addSubview(UniversityImageView)
        UniversityImageView.anchor(top: nil, paddingTop: 0, left: view.leftAnchor, paddingLeft: 0, bottom: view.bottomAnchor, paddingBotton: 70, right: view.rightAnchor, paddingRight: 0, width: view.frame.width, height: 80)
        
        let FATVButton = createFATVButton(image: #imageLiteral(resourceName: "FATVsmall.png"), handler: #selector(handleFATV))
        let howToButton = createHowToButton(image: #imageLiteral(resourceName: "howTo.png"), handler: #selector(handleHowTo))
        let backButton = createBackButton(image: #imageLiteral(resourceName: "Back Button White"), handler: #selector(handleDismiss))
        
        
        //add majors button to the screen
        view.addSubview(FATVButton)
        FATVButton.anchor(top: customNavigationBar.bottomAnchor, paddingTop: 30, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 270, width: 0, height: 60)
        
        view.addSubview(howToButton)
        howToButton.anchor(top: FATVButton.bottomAnchor, paddingTop: 20, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 100, width: 0, height: 60)
        
        view.addSubview(backButton)
        backButton.anchor(top: howToButton.bottomAnchor, paddingTop: 30, left: view.leftAnchor, paddingLeft: 30, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 30, width: 0, height: 40)
        
    }



}


