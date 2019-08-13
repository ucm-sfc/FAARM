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
    
    lazy var leftLabels = [UILabel]()
    lazy var rightLabels = [UILabel]()
    
    lazy var goldBottomDividerViews = [UIView]()
    
    let leftLabelList = ["Tuition", "Student Services", "Health Services", "Transportation", "Student Life", "Associated Students", "Recreation", "Intercollegiate Athletics", "Campus Activities Board", "Early Childhood Education Center"]
    
    let rightLabelList = ["$5721.00", "$564.00", "$50.00", "$87.50", "$15.00", "$65.68", "$146.00", "$75.00", "$35.00", "$10.00"]
    
    func fillDividers() {
        for _ in leftLabelList{
            let view = UIView()
            view.backgroundColor = .ucmGold
            
            goldBottomDividerViews.append(view)
        }
    }
    
    func fillLeftList() {
        for i in leftLabelList{
            let label = UILabel()
            label.text = i
            label.font = UIFont.boldSystemFont(ofSize: 17)
            label.textColor = .white
            label.numberOfLines = 0
            label.textAlignment = .left
            label.lineBreakMode = .byWordWrapping
            
            leftLabels.append(label)
        }
    }
    
    func fillRightList() {
        for i in rightLabelList{
            let label = UILabel()
            label.text = i
            label.font = UIFont.boldSystemFont(ofSize: 17)
            label.textColor = .white
            label.numberOfLines = 0
            label.textAlignment = .right
            
            rightLabels.append(label)
        }
    }
    
    // From here on out: individual labels do not need to be in an array.
    
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
        label.text = "Total tuition/fees for one semester in the 2018-2019 academic year: $6,769.18\n\nTotal for the full 2018-2019 academic year: $13,538.36"
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .center
        label.lineBreakMode = .byWordWrapping
        return label
    }()

    let underGradNonResidentLabel: UILabel = {
        let label = UILabel()
        label.text = "Undergraduates - Non-Residents"
        label.font = UIFont.boldSystemFont(ofSize: 22)
        label.textColor = .ucmGold
        label.numberOfLines = 0
        label.textAlignment = .center
        label.lineBreakMode = .byWordWrapping
        return label
    }()
    
    let underGradNonResFollowUpLabel1: UILabel = {
        let label = UILabel()
        label.text = "Non-resident students pay the same fees as listed above in addition to a Nonresident Supplemental Tuition of $14,496 each semester.\n\nTotal tuition and fees for one semester in the 2018-2019 academic year: $21,265.18.\n\nTuition for the full 2018-2019 academic year: $42,530.36\n\nTotal does not include cost of health insurance, if purchased."
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .center
        label.lineBreakMode = .byWordWrapping
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
        label.text = "The tuition, fees, and charges posted here are estimates based on currently approved amounts. These figures may not be final. Actual tuition, fees, and charges are subject to change by the Regents of the University of California and could be affected by State funding reductions. Accordingly, final approved levels (and thus a student’s final balance due) may differ from the amounts shown."
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .center
        label.lineBreakMode = .byWordWrapping
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(scrollView)
        //scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        scrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        scrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        fillLeftList()
        fillRightList()
        
        fillDividers()
        
        guard let collectionView = collectionView else { return }
        collectionView.backgroundColor = .ucmBlue
        
        setupUI()
    }
    
}
