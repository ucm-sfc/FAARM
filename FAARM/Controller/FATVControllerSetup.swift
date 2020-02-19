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
        customNavigationBar.logoImageView.setImage(#imageLiteral(resourceName: "FATVTitle"), for: .normal)
        customNavigationBar.logoImageView.adjustsImageWhenDisabled = false
        customNavigationBar.logoImageView.isEnabled = false
        collectionView.addSubview(customNavigationBar)
        customNavigationBar.anchorMiniNavBar(view: view)

        let spanishButton = createSpanishButton(image: #imageLiteral(resourceName: "SpanishTab.png") , handler: #selector(handleSpanishButton))
        let englishButton = createEnglishButton(image: #imageLiteral(resourceName: "englishTab.png"), handler: #selector(handleEnglishButton))
        let backButton = createBackButton(image: #imageLiteral(resourceName: "Back Button White"), handler: #selector(handleDismiss))

        //adds the university image to the page
        view.addSubview(UniversityImageView)
        UniversityImageView.anchor(top: nil, paddingTop: 0, left: view.leftAnchor, paddingLeft: 0, bottom: view.bottomAnchor, paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: view.frame.width, height: view.frame.height)

        //add buttons to the screen, each of the tabs are separated by 80 pix
        view.addSubview(englishButton)
        englishButton.anchor(top: customNavigationBar.bottomAnchor, paddingTop: 30, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: view.frame.width * 0.5, width: 0, height: view.frame.height * 0.075)

        view.addSubview(spanishButton)
        spanishButton.anchor(top: englishButton.bottomAnchor, paddingTop: 20, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: view.frame.width * 0.5, width: 0, height: view.frame.height * 0.075)

        view.addSubview(backButton)
        backButton.anchor(top: spanishButton.bottomAnchor, paddingTop: 30, left: view.leftAnchor, paddingLeft: 27.5, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 27.5, width: 0, height: view.frame.height * 0.05)
    }
}
