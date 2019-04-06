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
        
        let customNavigationBar = CustomNavigationView()
        customNavigationBar.logoImageView.contentMode = .scaleAspectFit
        customNavigationBar.logoImageView.image = #imageLiteral(resourceName: "FinAidTitle")
        collectionView.addSubview(customNavigationBar)
        customNavigationBar.anchorMiniNavBar(view: view)
        
        let directCostWorksheetButton = createDirectCostWorksheetButton(image: #imageLiteral(resourceName: "DirectCostWorksheetTab"), handler: #selector(handleDirectCostWorksheet))
         let COAButton = createCOAButton(image: #imageLiteral(resourceName: "COA-white.png") , handler: #selector(handleCOA))
        let tuitionAndFees = createTFButton(image: #imageLiteral(resourceName: "Tuition&Fees.png") , handler: #selector(handleTF))
        let dppButton = createDPPButton(image: #imageLiteral(resourceName: "PaymentPlan.png"), handler: #selector(handleDPP))
        let finAidFormsButton = createFinAidFormsButton(image: #imageLiteral(resourceName: "FinAidFormsTab-gold.png"), handler: #selector(handleFinAidForms))
        let backButton = createBackButton(image: #imageLiteral(resourceName: "Back Button White"), handler: #selector(handleDismiss))
        
        
        //adds the university image to the page
        view.addSubview(UniversityImageView)
        UniversityImageView.anchor(top: nil, paddingTop: 0, left: view.leftAnchor, paddingLeft: 0, bottom: view.bottomAnchor, paddingBotton: 70, right: view.rightAnchor, paddingRight: 0, width: view.frame.width, height: 80)
        
        
        //add buttons to the screen
        view.addSubview(directCostWorksheetButton)
        directCostWorksheetButton.anchor(top: customNavigationBar.bottomAnchor, paddingTop: 30, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 30, width: 0, height: 60)
        
        view.addSubview(COAButton)
        COAButton.anchor(top: directCostWorksheetButton.bottomAnchor, paddingTop: 20, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 40, width: 0, height: 60)
        
        view.addSubview(tuitionAndFees)
        tuitionAndFees.anchor(top: COAButton.bottomAnchor, paddingTop: 20, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 95, width: 0, height: 60)
        
        view.addSubview(dppButton)
        dppButton.anchor(top: tuitionAndFees.bottomAnchor, paddingTop: 20, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 140, width: 0, height: 60)
        
        view.addSubview(finAidFormsButton)
        finAidFormsButton.anchor(top: dppButton.bottomAnchor, paddingTop: 20, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 50, width: 0, height: 60)
        
        
        view.addSubview(backButton)
        backButton.anchor(top: finAidFormsButton.bottomAnchor, paddingTop: 30, left: view.leftAnchor, paddingLeft: 30, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 25, width: 0, height: 40)
        
        
        //each of the tabs are separated by 80 pix
        
    }
    
    
    
}
