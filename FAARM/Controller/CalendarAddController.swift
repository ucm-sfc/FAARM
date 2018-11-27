//
//  DetailsController.swift
//  FAARM
//
//  Created by Christopher Villanueva on 4/18/18.
//  Copyright © 2018 Christopher Villanueva. All rights reserved.
//

import UIKit
import CoreData
import Firebase

class CalendarAddController: UIViewController {
    
    let detailsView: UIView = {
        let view = UIView()
        view.backgroundColor = .ucmBlue
        view.layer.cornerRadius = 15
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.masksToBounds = true
        return view
    }()
    
    lazy var cancelButton: UIButton = {
        let button = UIButton()
        button.addTarget(self, action: #selector(handleDismiss), for: .touchUpInside)
        button.backgroundColor = .ucmGold
        button.titleLabel?.textColor = .white
        button.setTitle("Cancel", for: .normal)
        button.layer.cornerRadius = 10
        return button
    }()
    
    lazy var addButton: UIButton = {
        let button = UIButton()
        button.addTarget(self, action: #selector(handleAddToNotifications), for: .touchUpInside)
        button.backgroundColor = .ucmGold
        button.titleLabel?.textColor = .white
        button.setTitle("Add", for: .normal)
        button.layer.cornerRadius = 10
        return button
    }()
    
    let buttonsStackView: UIStackView = {
        let sv = UIStackView()
        sv.axis = .horizontal
        sv.distribution = .fillEqually
        sv.spacing = 15
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    let dateLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .center
        label.backgroundColor = .ucmGold
        return label
    }()

    let descriptionTextView: UITextView = {
        let textView = UITextView()
        textView.backgroundColor = .ucmBlue
        textView.textColor = .white
        textView.textAlignment = .left
        textView.isUserInteractionEnabled = false
        textView.font = UIFont.systemFont(ofSize: 20)
        return textView
    }()
    
    var timeInterval: Int?
    var monthAbbrev: String?
    var dayNumber: String?
    var dayName: String?
    var year: String?
    
    var calendarController: CalendarController?
    
    var calendarEvent: CalendarEvent? {
        didSet {
           //titleLabel.text = calendarEvent?.name
            if let dayName = calendarEvent?.dayName, let monthAbbrev = calendarEvent?.monthAbbrev, let dayNumber = calendarEvent?.dayNumber, let year = calendarEvent?.year {
                let attributedText = NSMutableAttributedString(string: "Date : ", attributes: [NSAttributedStringKey.font : UIFont.systemFont(ofSize: 22), NSAttributedStringKey.foregroundColor: UIColor.white])
                attributedText.append(NSAttributedString(string: "\(dayName), \(monthAbbrev) \(dayNumber)", attributes: [NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 22), NSAttributedStringKey.foregroundColor: UIColor.white]))
                dateLabel.attributedText = attributedText
                self.monthAbbrev = monthAbbrev
                self.dayNumber = dayNumber
                self.dayName = dayName
                self.year = year
            }
            descriptionTextView.text = calendarEvent?.name
            timeInterval = calendarEvent?.timeInterval
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    
   
}




