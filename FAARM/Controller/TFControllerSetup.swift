//
//  TFControllerSetup.swift
//  FAARM
//
//  Created by Nathan Huizar on 3/7/19.
//  Copyright © 2019 Christopher Villanueva. All rights reserved.
//

import UIKit

extension TFController {
    
    func setupUI(){
        
        //sets up the "Financial Aid" image to stick to the top of the screen
        let customNavigationBar = CustomNavigationView()
        customNavigationBar.logoImageView.image = #imageLiteral(resourceName: "FinAidTitle.png")
        view.addSubview(customNavigationBar)
        customNavigationBar.anchorMiniNavBar(view: view)
        
        //creates back button using back button image
        let backButton = createBackButton(image: #imageLiteral(resourceName: "back_arrow").withRenderingMode(.alwaysTemplate), handler: #selector(handleDismiss))
        
        //scrollView begins right under the "Financial Aid" image
        scrollView.topAnchor.constraint(equalTo: customNavigationBar.bottomAnchor).isActive = true
        
        //backButton with headerlabel to the right
        scrollView.addSubview(backButton)
        backButton.anchor(top: scrollView.topAnchor, paddingTop: 10, left: scrollView.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: nil, paddingRight: 0, width: 0, height: 75)
        
        scrollView.addSubview(headerLabel)
        headerLabel.anchor(top: scrollView.topAnchor, paddingTop: 10, left: backButton.rightAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 40, width: 0, height: 75)
        
        //independent label
        scrollView.addSubview(underGradLabel)
        underGradLabel.anchor(top: backButton.bottomAnchor, paddingTop: 0, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 25)
        
        //initial labels to set up table
        scrollView.addSubview(leftLabels[0])
        leftLabels[0].anchor(top: underGradLabel.bottomAnchor, paddingTop: 15, left: view.leftAnchor, paddingLeft: 10, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 20)
        
        scrollView.addSubview(rightLabels[0])
        rightLabels[0].anchor(top: underGradLabel.bottomAnchor, paddingTop: 15, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 10, width: 0, height: 20)
        
        scrollView.addSubview(goldBottomDividerViews[0])
        goldBottomDividerViews[0].anchor(top: rightLabels[0].bottomAnchor, paddingTop: 5, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 2)
        
        //adds rest of labels for table
        for i in 1...leftLabelList.count - 1{
            
            scrollView.addSubview(leftLabels[i])
            leftLabels[i].anchor(top: goldBottomDividerViews[i - 1].bottomAnchor, paddingTop: 5, left: view.leftAnchor, paddingLeft: 10, bottom: nil, paddingBotton: 20, right: view.rightAnchor, paddingRight: 70, width: 0, height: 0)
            
            scrollView.addSubview(rightLabels[i])
            rightLabels[i].anchor(top: goldBottomDividerViews[i - 1].bottomAnchor, paddingTop: 5, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 20, right: view.rightAnchor, paddingRight: 10, width: 0, height: 0)
            
            scrollView.addSubview(goldBottomDividerViews[i])
            goldBottomDividerViews[i].anchor(top: leftLabels[i].bottomAnchor, paddingTop: 5, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 2)
            
        }
        
        //independent labels
        scrollView.addSubview(underGradFollowUpLabel)
        underGradFollowUpLabel.anchor(top: goldBottomDividerViews[goldBottomDividerViews.count - 1].bottomAnchor, paddingTop: 15, left: view.leftAnchor, paddingLeft: 20, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 20, width: 0, height: 0)
        
        scrollView.addSubview(underGradNonResidentLabel)
        underGradNonResidentLabel.anchor(top: underGradFollowUpLabel.bottomAnchor, paddingTop: 15, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 0)
        
        scrollView.addSubview(underGradNonResFollowUpLabel1)
        underGradNonResFollowUpLabel1.anchor(top: underGradNonResidentLabel.bottomAnchor, paddingTop: 0, left: view.leftAnchor, paddingLeft: 20, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 20, width: 0, height: 0)
        
        scrollView.addSubview(feeDisclaimerHeader)
        feeDisclaimerHeader.anchor(top: underGradNonResFollowUpLabel1.bottomAnchor, paddingTop: 15, left: view.leftAnchor, paddingLeft: 0, bottom: nil , paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 20)
        
        scrollView.addSubview(feeDisclaimerLabel)
        feeDisclaimerLabel.anchor(top: feeDisclaimerHeader.bottomAnchor, paddingTop: 15, left: view.leftAnchor, paddingLeft: 20, bottom: scrollView.bottomAnchor, paddingBotton: 20, right: view.rightAnchor, paddingRight: 20, width: 0, height: 0)

    }
    
}
