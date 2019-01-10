//
//  FinAidControllerSetup.swift
//  FAARM
//
//  Created by Nathan Huizar on 4/11/18.
//  Copyright © 2018 Christopher Villanueva. All rights reserved.
//

import UIKit

extension FinAidController {
    
    
    func setupUI() {
        
        let directCostWorksheetButton = createDirectCostWorksheetButton(image: #imageLiteral(resourceName: "DirectCostWorksheetTab"), handler: #selector(handleDirectCostWorksheet))
        let finAidFormsButton = createFinAidFormsButton(image: #imageLiteral(resourceName: "FinAidFormsTab"), handler: #selector(handleFinAidForms))
        let finWebsiteButton = createFinWebsiteButton(image: #imageLiteral(resourceName: "FinAidWebsite"), handler: #selector(handleFinWebsite))
        let backButton = createBackButton(image: #imageLiteral(resourceName: "Back Button White"), handler: #selector(handleDismiss))
        
        
        //adds the university image to the page
        view.addSubview(UniversityImageView)
        UniversityImageView.anchor(top: nil, paddingTop: 0, left: view.leftAnchor, paddingLeft: 0, bottom: view.bottomAnchor, paddingBotton: 80, right: view.rightAnchor, paddingRight: 0, width: view.frame.width, height: 80)
        
        
        //add buttons to the screen
        view.addSubview(directCostWorksheetButton)
        directCostWorksheetButton.anchor(top: view.topAnchor, paddingTop: 120, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 50, width: 0, height: 60)
        
        view.addSubview(finAidFormsButton)
        finAidFormsButton.anchor(top: view.topAnchor, paddingTop: 200, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 90, width: 0, height: 60)
        
        view.addSubview(finWebsiteButton)
        finWebsiteButton.anchor(top: view.topAnchor, paddingTop: 280, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 180, width: 0, height: 60)
        
        view.addSubview(backButton)
        backButton.anchor(top: finWebsiteButton.bottomAnchor, paddingTop: 30, left: view.leftAnchor, paddingLeft: 30, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 25, width: 0, height: 40)
        
        
        //each of the tabs are separated by 80 pix
        
    }
    
    
    
}
