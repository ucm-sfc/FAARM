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
    
    
        let customNavigationBar = CustomNavigationView()
        customNavigationBar.logoImageView.image = #imageLiteral(resourceName: "FinAidTitle.png")
        view.addSubview(customNavigationBar)
        customNavigationBar.anchorMiniNavBar(view: view)
            
        let backButton = createBackButton(image: #imageLiteral(resourceName: "back_arrow").withRenderingMode(.alwaysTemplate), handler: #selector(handleDismiss))
            
//        scrollView.anchor(top: view.topAnchor, paddingTop: 0, left: view.leftAnchor, paddingLeft: 0, bottom: view.bottomAnchor, paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0 , height: 0)
        scrollView.topAnchor.constraint(equalTo: customNavigationBar.bottomAnchor).isActive = true
        
        scrollView.addSubview(backButton)
        backButton.anchor(top: scrollView.topAnchor, paddingTop: 10, left: scrollView.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: nil, paddingRight: 0, width: 75, height: 75)
            
            
        scrollView.addSubview(headerLabel)
        headerLabel.anchor(top: scrollView.topAnchor, paddingTop: 10, left: backButton.rightAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: scrollView.rightAnchor, paddingRight: 75, width: 0, height: 75)

        scrollView.addSubview(underGradLabel)
        underGradLabel.anchor(top: backButton.bottomAnchor, paddingTop: 0, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 25)

        scrollView.addSubview(tuitionLabel)
        tuitionLabel.anchor(top: underGradLabel.bottomAnchor, paddingTop: 15, left: view.leftAnchor, paddingLeft: 10, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 20)

        scrollView.addSubview(tuitionFee)
        tuitionFee.anchor(top: underGradLabel.bottomAnchor, paddingTop: 15, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 10, width: 0, height: 20)

        scrollView.addSubview(goldBottomDividerView1)
        goldBottomDividerView1.anchor(top: tuitionFee.bottomAnchor, paddingTop: 5, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 2)

        scrollView.addSubview(StudentServiceLabel)
        StudentServiceLabel.anchor(top: goldBottomDividerView1.bottomAnchor, paddingTop: 5, left: view.leftAnchor, paddingLeft: 10, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 20)

        scrollView.addSubview(StudentServiceFee)
        StudentServiceFee.anchor(top: goldBottomDividerView1.bottomAnchor, paddingTop: 5, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 10, width: 0, height: 20)

        scrollView.addSubview(goldBottomDividerView2)
        goldBottomDividerView2.anchor(top: StudentServiceFee.bottomAnchor, paddingTop: 5, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 2)

        scrollView.addSubview(HealthServiceLabel)
        HealthServiceLabel.anchor(top: goldBottomDividerView2.bottomAnchor, paddingTop: 5, left: view.leftAnchor, paddingLeft: 10, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 20)

        scrollView.addSubview(HealthServiceFee)
        HealthServiceFee.anchor(top: goldBottomDividerView2.bottomAnchor, paddingTop: 5, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 10, width: 0, height: 20)

        scrollView.addSubview(goldBottomDividerView3)
        goldBottomDividerView3.anchor(top: HealthServiceFee.bottomAnchor, paddingTop: 5, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 2)

        scrollView.addSubview(TransportationLabel)
        TransportationLabel.anchor(top: goldBottomDividerView3.bottomAnchor, paddingTop: 5, left: view.leftAnchor, paddingLeft: 10, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 20)

        scrollView.addSubview(TransportationFee)
        TransportationFee.anchor(top: goldBottomDividerView3.bottomAnchor, paddingTop: 5, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 10, width: 0, height: 20)

        scrollView.addSubview(goldBottomDividerView4)
        goldBottomDividerView4.anchor(top: TransportationFee.bottomAnchor, paddingTop: 5, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 2)

        scrollView.addSubview(StudentLifeLabel)
        StudentLifeLabel.anchor(top: goldBottomDividerView4.bottomAnchor, paddingTop: 5, left: view.leftAnchor, paddingLeft: 10, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 20)

        scrollView.addSubview(StudentLifeFee)
        StudentLifeFee.anchor(top: goldBottomDividerView4.bottomAnchor, paddingTop: 5, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 10, width: 0, height: 20)

        scrollView.addSubview(goldBottomDividerView5)
        goldBottomDividerView5.anchor(top: StudentLifeFee.bottomAnchor, paddingTop: 5, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 2)

        scrollView.addSubview(AssociatedStudentsLabel)
        AssociatedStudentsLabel.anchor(top: goldBottomDividerView5.bottomAnchor, paddingTop: 5, left: view.leftAnchor, paddingLeft: 10, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 20)

        scrollView.addSubview(AssociatedStudentsFee)
        AssociatedStudentsFee.anchor(top: goldBottomDividerView5.bottomAnchor, paddingTop: 5, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 10, width: 0, height: 20)

        scrollView.addSubview(goldBottomDividerView6)
        goldBottomDividerView6.anchor(top: AssociatedStudentsFee.bottomAnchor, paddingTop: 5, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 2)

        scrollView.addSubview(RecreationLabel)
        RecreationLabel.anchor(top: goldBottomDividerView6.bottomAnchor, paddingTop: 5, left: view.leftAnchor, paddingLeft: 10, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 20)

        scrollView.addSubview(RecreationFee)
        RecreationFee.anchor(top: goldBottomDividerView6.bottomAnchor, paddingTop: 5, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 10, width: 0, height: 20)

        scrollView.addSubview(goldBottomDividerView7)
        goldBottomDividerView7.anchor(top: RecreationFee.bottomAnchor, paddingTop: 5, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 2)

        scrollView.addSubview(IntercollegiateAthleticsLabel)
        IntercollegiateAthleticsLabel.anchor(top: goldBottomDividerView7.bottomAnchor, paddingTop: 5, left: view.leftAnchor, paddingLeft: 10, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 20)

        scrollView.addSubview(IntercollegiateAthleticsFee)
        IntercollegiateAthleticsFee.anchor(top: goldBottomDividerView7.bottomAnchor, paddingTop: 5, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 10, width: 0, height: 20)

        scrollView.addSubview(goldBottomDividerView8)
        goldBottomDividerView8.anchor(top: IntercollegiateAthleticsLabel.bottomAnchor, paddingTop: 5, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 2)

        scrollView.addSubview(CampusActivitiesBoardLabel)
        CampusActivitiesBoardLabel.anchor(top: goldBottomDividerView8.bottomAnchor, paddingTop: 5, left: view.leftAnchor, paddingLeft: 10, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 20)

        scrollView.addSubview(CampusActivitiesBoardFee)
        CampusActivitiesBoardFee.anchor(top: goldBottomDividerView8.bottomAnchor, paddingTop: 5, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 10, width: 0, height: 20)

        scrollView.addSubview(goldBottomDividerView9)
        goldBottomDividerView9.anchor(top: CampusActivitiesBoardLabel.bottomAnchor, paddingTop: 5, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 2)

        scrollView.addSubview(EarlyChildhoodEducationCenterLabel)
        EarlyChildhoodEducationCenterLabel.anchor(top: goldBottomDividerView9.bottomAnchor, paddingTop: 5, left: view.leftAnchor, paddingLeft: 10, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 20)

        scrollView.addSubview(EarlyChildhoodEducationCenterFee)
        EarlyChildhoodEducationCenterFee.anchor(top: goldBottomDividerView9.bottomAnchor, paddingTop: 5, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 10, width: 0, height: 20)

        scrollView.addSubview(goldBottomDividerView10)
            goldBottomDividerView10.anchor(top: EarlyChildhoodEducationCenterLabel.bottomAnchor, paddingTop: 5, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 2)

        scrollView.addSubview(underGradFollowUpLabel)
        underGradFollowUpLabel.anchor(top: goldBottomDividerView10.bottomAnchor, paddingTop: 15, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 20)

        scrollView.addSubview(underGradFollowUpLabel_1)
        underGradFollowUpLabel_1.anchor(top: underGradFollowUpLabel.bottomAnchor, paddingTop: 5, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 20)

        scrollView.addSubview(underGradFollowUpLabel2)
        underGradFollowUpLabel2.anchor(top: underGradFollowUpLabel_1.bottomAnchor, paddingTop: 10, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 20)
            
        scrollView.addSubview(underGradFollowUpLabel2_1)
        underGradFollowUpLabel2_1.anchor(top: underGradFollowUpLabel2.bottomAnchor, paddingTop: 5, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 20)

        scrollView.addSubview(underGradNonResidentLabel)
        underGradNonResidentLabel.anchor(top: underGradFollowUpLabel2_1.bottomAnchor, paddingTop: 15, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 25)

        scrollView.addSubview(underGradNonResFollowUpLabel1)
        underGradNonResFollowUpLabel1.anchor(top: underGradNonResidentLabel.bottomAnchor, paddingTop: 15, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 20)

        scrollView.addSubview(underGradNonResFollowUpLabel1_1)
        underGradNonResFollowUpLabel1_1.anchor(top: underGradNonResFollowUpLabel1.bottomAnchor, paddingTop: 5, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 20)

        scrollView.addSubview(underGradNonResFollowUpLabel1_2)
        underGradNonResFollowUpLabel1_2.anchor(top: underGradNonResFollowUpLabel1_1.bottomAnchor, paddingTop: 5, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 20)

        scrollView.addSubview(underGradNonResFollowUpLabel2)
        underGradNonResFollowUpLabel2.anchor(top: underGradNonResFollowUpLabel1_2.bottomAnchor, paddingTop: 15, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 20)

        scrollView.addSubview(underGradNonResFollowUpLabel2_1)
        underGradNonResFollowUpLabel2_1.anchor(top: underGradNonResFollowUpLabel2.bottomAnchor, paddingTop: 5, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 20)

        scrollView.addSubview(underGradNonResFollowUpLabel3)
        underGradNonResFollowUpLabel3.anchor(top: underGradNonResFollowUpLabel2_1.bottomAnchor, paddingTop: 10, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 20)
            
        scrollView.addSubview(underGradNonResFollowUpLabel3_1)
        underGradNonResFollowUpLabel3_1.anchor(top: underGradNonResFollowUpLabel3.bottomAnchor, paddingTop: 5, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 20)
            
        scrollView.addSubview(healthInReminder)
        healthInReminder.anchor(top: underGradNonResFollowUpLabel3_1.bottomAnchor, paddingTop: 15, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 20)
    
        scrollView.addSubview(healthInReminder1)
        healthInReminder1.anchor(top: healthInReminder.bottomAnchor, paddingTop: 5, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 20)
            
        scrollView.addSubview(feeDisclaimerHeader)
        feeDisclaimerHeader.anchor(top: healthInReminder1.bottomAnchor, paddingTop: 15, left: view.leftAnchor, paddingLeft: 0, bottom: nil , paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 20)
    
        scrollView.addSubview(feeDisclaimerLabel)
        feeDisclaimerLabel.anchor(top: feeDisclaimerHeader.bottomAnchor, paddingTop: 15, left: view.leftAnchor, paddingLeft: 0, bottom: nil , paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 20)
            
        scrollView.addSubview(feeDisclaimerLabel_2)
        feeDisclaimerLabel_2.anchor(top: feeDisclaimerLabel.bottomAnchor, paddingTop: 5, left: view.leftAnchor, paddingLeft: 0, bottom: nil , paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 20)
            
        scrollView.addSubview(feeDisclaimerLabel_3)
        feeDisclaimerLabel_3.anchor(top: feeDisclaimerLabel_2.bottomAnchor, paddingTop: 5, left: view.leftAnchor, paddingLeft: 0, bottom: nil , paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 20)
            
        scrollView.addSubview(feeDisclaimerLabel_4)
        feeDisclaimerLabel_4.anchor(top: feeDisclaimerLabel_3.bottomAnchor, paddingTop: 5, left: view.leftAnchor, paddingLeft: 0, bottom: nil , paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 20)
            
        scrollView.addSubview(feeDisclaimerLabel_5)
        feeDisclaimerLabel_5.anchor(top: feeDisclaimerLabel_4.bottomAnchor, paddingTop: 5, left: view.leftAnchor, paddingLeft: 0, bottom: nil , paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 20)
            
        scrollView.addSubview(feeDisclaimerLabel_6)
        feeDisclaimerLabel_6.anchor(top: feeDisclaimerLabel_5.bottomAnchor, paddingTop: 5, left: view.leftAnchor, paddingLeft: 0, bottom: nil , paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 20)
            
        scrollView.addSubview(feeDisclaimerLabel_7)
        feeDisclaimerLabel_7.anchor(top: feeDisclaimerLabel_6.bottomAnchor, paddingTop: 5, left: view.leftAnchor, paddingLeft: 0, bottom: nil , paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 20)
            
        scrollView.addSubview(feeDisclaimerLabel_8)
        feeDisclaimerLabel_8.anchor(top: feeDisclaimerLabel_7.bottomAnchor, paddingTop: 5, left: view.leftAnchor, paddingLeft: 0, bottom: scrollView.bottomAnchor , paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 20)
    }
    
}
