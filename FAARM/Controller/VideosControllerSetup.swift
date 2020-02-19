//
//  VideosControllerSetup.swift
//  FAARM
//
//  Created by Nathan Huizar on 4/5/18.
//  Copyright © 2018 Christopher Villanueva. All rights reserved.
//

import UIKit

extension VideosController {

    func setupUI() {
        
        let customNavigationBar = CustomNavigationView()
        customNavigationBar.logoImageView.setImage(#imageLiteral(resourceName: "TutorialTitle.png"), for: .normal)
        customNavigationBar.logoImageView.adjustsImageWhenDisabled = false
        customNavigationBar.logoImageView.isEnabled = false
        
        collectionView.addSubview(customNavigationBar)
        customNavigationBar.anchorMiniNavBar(view: view)
        
        //adds the university image to the pages 
        view.addSubview(UniversityImageView)
        UniversityImageView.anchor(top: nil, paddingTop: 0, left: view.leftAnchor, paddingLeft: 0, bottom: view.bottomAnchor, paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: view.frame.width, height: view.frame.height)
        
        let FATVButton = createFATVButton(image: #imageLiteral(resourceName: "FATVsmall.png"), handler: #selector(handleFATV))
        let howToButton = createHowToButton(image: #imageLiteral(resourceName: "howTo.png"), handler: #selector(handleHowTo))
        let backButton = createBackButton(image: #imageLiteral(resourceName: "Back Button White"), handler: #selector(handleDismiss))
        
        //add majors button to the screen
        view.addSubview(FATVButton)
        FATVButton.anchor(top: customNavigationBar.bottomAnchor, paddingTop: 30, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: view.frame.width * 0.6, width: 0, height: view.frame.height * 0.075)
        
        view.addSubview(howToButton)
        howToButton.anchor(top: FATVButton.bottomAnchor, paddingTop: 20, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: view.frame.width * 0.2, width: 0, height: view.frame.height * 0.075)
        
        view.addSubview(backButton)
        backButton.anchor(top: howToButton.bottomAnchor, paddingTop: 30, left: view.leftAnchor, paddingLeft: 27.5, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 27.5, width: 0, height: view.frame.height * 0.05)
    }
}
