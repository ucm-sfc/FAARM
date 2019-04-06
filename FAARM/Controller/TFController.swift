//
//  TFController.swift
//  FAARM
//
//  Created by Nathan Huizar on 3/7/19.
//  Copyright © 2019 Christopher Villanueva. All rights reserved.
//

import UIKit

class TFController: UICollectionViewController {
    
    lazy var scrollView : UIScrollView = {
        let view = UIScrollView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.ucmBlue
        view.alwaysBounceVertical = true
        view.contentSize.height = 5000
        view.showsVerticalScrollIndicator = true
        return view
    }()
    
    let goldBottomDividerView1: UIView = {
        let view = UIView()
        view.backgroundColor = .ucmGold
        return view
    }()
    
    let goldBottomDividerView2: UIView = {
        let view = UIView()
        view.backgroundColor = .ucmGold
        return view
    }()
    
    let goldBottomDividerView3: UIView = {
        let view = UIView()
        view.backgroundColor = .ucmGold
        return view
    }()
    
    let goldBottomDividerView4: UIView = {
        let view = UIView()
        view.backgroundColor = .ucmGold
        return view
    }()
    
    let goldBottomDividerView5: UIView = {
        let view = UIView()
        view.backgroundColor = .ucmGold
        return view
    }()
    
    let goldBottomDividerView6: UIView = {
        let view = UIView()
        view.backgroundColor = .ucmGold
        return view
    }()
    
    let goldBottomDividerView7: UIView = {
        let view = UIView()
        view.backgroundColor = .ucmGold
        return view
    }()
    
    let goldBottomDividerView8: UIView = {
        let view = UIView()
        view.backgroundColor = .ucmGold
        return view
    }()
    
    let goldBottomDividerView9: UIView = {
        let view = UIView()
        view.backgroundColor = .ucmGold
        return view
    }()
    
    let goldBottomDividerView10: UIView = {
        let view = UIView()
        view.backgroundColor = .ucmGold
        return view
    }()
    
    
    let tuitionLabel: UILabel = {
        let label = UILabel()
        label.text = "Tuition"
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .left
        return label
    }()
    
    let tuitionFee: UILabel = {
        let label = UILabel()
        label.text = "$5721.00"
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .right
        return label
    }()
    
    let StudentServiceLabel: UILabel = {
        let label = UILabel()
        label.text = "Student Services"
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .left
        return label
    }()
    
    let StudentServiceFee: UILabel = {
        let label = UILabel()
        label.text = "$564.00"
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .right
        return label
    }()
    
    let HealthServiceLabel: UILabel = {
        let label = UILabel()
        label.text = "Health Services"
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .left
        return label
    }()
    
    let HealthServiceFee: UILabel = {
        let label = UILabel()
        label.text = "$50.00"
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .right
        return label
    }()
    
    let TransportationLabel: UILabel = {
        let label = UILabel()
        label.text = "Transportation"
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .left
        return label
    }()
    
    let TransportationFee: UILabel = {
        let label = UILabel()
        label.text = "$87.50"
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .right
        return label
    }()
    
    let StudentLifeLabel: UILabel = {
        let label = UILabel()
        label.text = "Student Life"
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .left
        return label
    }()
    
    let StudentLifeFee: UILabel = {
        let label = UILabel()
        label.text = "$15.00"
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .right
        return label
    }()
    
    let AssociatedStudentsLabel: UILabel = {
        let label = UILabel()
        label.text = "Associated Students"
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .left
        return label
    }()
    
    let AssociatedStudentsFee: UILabel = {
        let label = UILabel()
        label.text = "$65.68"
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .right
        return label
    }()
    
    let RecreationLabel: UILabel = {
        let label = UILabel()
        label.text = "Recreation"
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .left
        return label
    }()
    
    let RecreationFee: UILabel = {
        let label = UILabel()
        label.text = "$146.00"
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .right
        return label
    }()
    
    let IntercollegiateAthleticsLabel: UILabel = {
        let label = UILabel()
        label.text = "Intercollegiate Athletics"
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .left
        return label
    }()
    
    let IntercollegiateAthleticsFee: UILabel = {
        let label = UILabel()
        label.text = "$75.00"
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .right
        return label
    }()
    
    let CampusActivitiesBoardLabel: UILabel = {
        let label = UILabel()
        label.text = "Campus Activities Board"
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .left
        return label
    }()
    
    let CampusActivitiesBoardFee: UILabel = {
        let label = UILabel()
        label.text = "$35.00"
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .right
        return label
    }()
    
    let EarlyChildhoodEducationCenterLabel: UILabel = {
        let label = UILabel()
        label.text = "Early Childhood Education Center"
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .left
        return label
    }()
    
    let EarlyChildhoodEducationCenterFee: UILabel = {
        let label = UILabel()
        label.text = "$10.00"
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .right
        return label
    }()
    
    let headerLabel: UILabel = {
        let label = UILabel()
        label.text = "2018-2019 Fee Schedule"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    let underGradLabel: UILabel = {
        let label = UILabel()
        label.text = "Undergraduates - Residents"
        label.font = UIFont.boldSystemFont(ofSize: 22)
        label.textColor = .ucmGold
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    let underGradFollowUpLabel: UILabel = {
        let label = UILabel()
        label.text = "Total tuition/fees for one semester in the"
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    let underGradFollowUpLabel_1: UILabel = {
        let label = UILabel()
        label.text = "2018-2019 academic year: $6,769.18"
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    let underGradFollowUpLabel2: UILabel = {
        let label = UILabel()
        label.text = "Total for the full 2018-2019 academic"
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    let underGradFollowUpLabel2_1: UILabel = {
        let label = UILabel()
        label.text = "year: $13,538.36"
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    let underGradNonResidentLabel: UILabel = {
        let label = UILabel()
        label.text = "Undergraduates - Non-Residents"
        label.font = UIFont.boldSystemFont(ofSize: 22)
        label.textColor = .ucmGold
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    let underGradNonResFollowUpLabel1: UILabel = {
        let label = UILabel()
        label.text = "Non-resident students pay the same fees"
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    let underGradNonResFollowUpLabel1_1: UILabel = {
        let label = UILabel()
        label.text = "as listed above in addition to a Nonresident"
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    let underGradNonResFollowUpLabel1_2: UILabel = {
        let label = UILabel()
        label.text = "Supplemental Tuition of $14,496 each semester"
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    let underGradNonResFollowUpLabel2: UILabel = {
        let label = UILabel()
        label.text = "Total tuition and fees for one semester in"
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    let underGradNonResFollowUpLabel2_1: UILabel = {
        let label = UILabel()
        label.text = "the 2018-2019 academic year: $21,265.18."
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    let underGradNonResFollowUpLabel3: UILabel = {
        let label = UILabel()
        label.text = "Tuition for the full 2018-2019 academic"
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    let underGradNonResFollowUpLabel3_1: UILabel = {
        let label = UILabel()
        label.text = "year: $42,530.36"
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    let healthInReminder: UILabel = {
        let label = UILabel()
        label.text = "Total does not include cost of"
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    let healthInReminder1: UILabel = {
        let label = UILabel()
        label.text = "health insurance, if purchased."
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    let feeDisclaimerHeader: UILabel = {
        let label = UILabel()
        label.text = "Fee Disclaimer"
        label.font = UIFont.boldSystemFont(ofSize: 22)
        label.textColor = .ucmGold
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    let feeDisclaimerLabel: UILabel = {
        let label = UILabel()
        label.text = "The tuition, fees, and charges posted"
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    let feeDisclaimerLabel_1: UILabel = {
        let label = UILabel()
        label.text = "here are estimates based on currently approved amounts."
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    let feeDisclaimerLabel_2: UILabel = {
        let label = UILabel()
        label.text = "These figures may not be final. Actual tuition, fees,"
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    let feeDisclaimerLabel_3: UILabel = {
        let label = UILabel()
        label.text = "and charges are subject to change by the"
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    let feeDisclaimerLabel_4: UILabel = {
        let label = UILabel()
        label.text = "Regents of the University of California and"
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    let feeDisclaimerLabel_5: UILabel = {
        let label = UILabel()
        label.text = "could be affected by State funding reductions."
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    let feeDisclaimerLabel_6: UILabel = {
        let label = UILabel()
        label.text = "Accordingly, final approved levels"
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    let feeDisclaimerLabel_7: UILabel = {
        let label = UILabel()
        label.text = "(and thus a student’s final balance due)"
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    let feeDisclaimerLabel_8: UILabel = {
        let label = UILabel()
        label.text = "may differ from the amounts shown"
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(scrollView)
//        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        scrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        scrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        
        guard let collectionView = collectionView else { return }
        collectionView.backgroundColor = .ucmBlue
        
        
        
        setupUI()
        
    }
    
    
}
