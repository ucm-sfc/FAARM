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
        
        //adds the university image to the page
        view.addSubview(UniversityImageView)
        UniversityImageView.anchor(top: nil, paddingTop: 0, left: view.leftAnchor, paddingLeft: 0, bottom: view.bottomAnchor, paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: view.frame.width, height: view.frame.height)
        
        let customNavigationBar = CustomNavigationView()
        
        customNavigationBar.logoImageView.setImage(#imageLiteral(resourceName: "FinAidTitle"), for: .normal)
        customNavigationBar.logoImageView.adjustsImageWhenDisabled = false
        customNavigationBar.logoImageView.isEnabled = false
        
        collectionView.addSubview(customNavigationBar)
        customNavigationBar.anchorMiniNavBar(view: view)
        
        let directCostWorksheetButton = createDirectCostWorksheetButton(image: #imageLiteral(resourceName: "DirectCostWorksheetTab"), handler: #selector(handleDirectCostWorksheet))
        let COAButton = createCOAButton(image: #imageLiteral(resourceName: "COA-white.png") , handler: #selector(handleCOA))
        let tuitionAndFees = createTFButton(image: #imageLiteral(resourceName: "Tuition&Fees.png") , handler: #selector(handleTF))
        let dppButton = createDPPButton(image: #imageLiteral(resourceName: "PaymentPlan.png"), handler: #selector(handleDPP))
        let finAidFormsButton = createFinAidFormsButton(image: #imageLiteral(resourceName: "FinAidFormsTab-gold.png"), handler: #selector(handleFinAidForms))
        let backButton = createBackButton(image: #imageLiteral(resourceName: "Back Button White"), handler: #selector(handleDismiss))
        
        //add buttons to the screen
        view.addSubview(directCostWorksheetButton)
        directCostWorksheetButton.anchor(top: customNavigationBar.bottomAnchor, paddingTop: 30, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: view.frame.width * 0.05, width: 0, height: view.frame.height * 0.075)
        
        view.addSubview(COAButton)
        COAButton.anchor(top: directCostWorksheetButton.bottomAnchor, paddingTop: 20, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: view.frame.width * 0.15, width: 0, height: view.frame.height * 0.075)
        
        view.addSubview(tuitionAndFees)
        tuitionAndFees.anchor(top: COAButton.bottomAnchor, paddingTop: 20, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: view.frame.width * 0.1, width: 0, height: view.frame.height * 0.075)
        
        view.addSubview(dppButton)
        dppButton.anchor(top: tuitionAndFees.bottomAnchor, paddingTop: 20, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: view.frame.width * 0.2, width: 0, height: view.frame.height * 0.075)
        
        view.addSubview(finAidFormsButton)
        finAidFormsButton.anchor(top: dppButton.bottomAnchor, paddingTop: 20, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: view.frame.width * 0.1, width: 0, height: view.frame.height * 0.075)
        
        view.addSubview(backButton)
        backButton.anchor(top: finAidFormsButton.bottomAnchor, paddingTop: 30, left: view.leftAnchor, paddingLeft: 27.5, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 27.5, width: 0, height: view.frame.height * 0.05)
        
        //each of the tabs are separated by 80 pix
        
    }
}
