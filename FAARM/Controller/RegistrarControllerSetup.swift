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
        
        let registrarButton = createResourceButton(image: #imageLiteral(resourceName: "Registrar Resources"), handler: #selector(handleResourceButton))
        let tutorialsButton = createTutorialsButton(image: #imageLiteral(resourceName: "Registrar Tutorials"), handler: #selector(handleTutorialsButton))
        let websiteButton = createWebsiteButton(image: #imageLiteral(resourceName: "Registrar Website"), handler: #selector(handleWebsiteButton))
        let backButton = createBackButton(image: #imageLiteral(resourceName: "Back Button White"), handler: #selector(handleDismiss))
        
        view.addSubview(UniversityImageView)
        UniversityImageView.anchor(top: nil, paddingTop: 0, left: view.leftAnchor, paddingLeft: 0, bottom: view.bottomAnchor, paddingBotton: 80, right: view.rightAnchor, paddingRight: 0, width: view.frame.width, height: 80)
        
        view.addSubview(registrarButton)
        registrarButton.anchor(top: view.topAnchor, paddingTop: 120, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 20, width: 0, height: 60)
        
        view.addSubview(tutorialsButton)
        tutorialsButton.anchor(top: view.topAnchor, paddingTop: 200, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 220, width: 0, height: 60)
        
        view.addSubview(websiteButton)
        websiteButton.anchor(top: view.topAnchor, paddingTop: 280, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 65, width: 0, height: 60)
        
        view.addSubview(backButton)
        backButton.anchor(top: websiteButton.bottomAnchor, paddingTop: 30, left: view.leftAnchor, paddingLeft: 30, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 30, width: 0, height: 40)
    
        
    }
    
    
}
