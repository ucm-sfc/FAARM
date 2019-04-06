//
//  FATVControllerSetup.swift
//  FAARM
//
//  Created by Nathan Huizar on 1/18/19.
//  Copyright © 2019 Christopher Villanueva. All rights reserved.
//

import UIKit

extension FATVController {
    
    
    func setupUI() {
        
        let customNavigationBar = CustomNavigationView()
        customNavigationBar.logoImageView.image = #imageLiteral(resourceName: "TutorialTitle.png")
        collectionView.addSubview(customNavigationBar)
        customNavigationBar.anchorMiniNavBar(view: view)
        
        let spanishButton = createSpanishButton(image: #imageLiteral(resourceName: "SpanishTab.png") , handler: #selector(handleSpanishButton))
        let englishButton = createEnglishButton(image: #imageLiteral(resourceName: "englishTab.png"), handler: #selector(handleEnglishButton))
        let backButton = createBackButton(image: #imageLiteral(resourceName: "Back Button White"), handler: #selector(handleDismiss))
        
        
        //adds the university image to the page
        view.addSubview(UniversityImageView)
        UniversityImageView.anchor(top: nil, paddingTop: 0, left: view.leftAnchor, paddingLeft: 0, bottom: view.bottomAnchor, paddingBotton: 70, right: view.rightAnchor, paddingRight: 0, width: view.frame.width, height: 80)
        
        
        //add buttons to the screen
        view.addSubview(englishButton)
        englishButton.anchor(top: customNavigationBar.bottomAnchor, paddingTop: 30, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 225, width: 0, height: 60)
        
        view.addSubview(spanishButton)
        spanishButton.anchor(top: englishButton.bottomAnchor, paddingTop: 20, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 225, width: 0, height: 60)

        
        view.addSubview(backButton)
        backButton.anchor(top: spanishButton.bottomAnchor, paddingTop: 30, left: view.leftAnchor, paddingLeft: 30, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 25, width: 0, height: 40)
        
        
        //each of the tabs are separated by 80 pix
        
    }
    
    
    
}
