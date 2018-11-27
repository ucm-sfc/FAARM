//
//  NotificationsDeleteController.swift
//  FAARM
//
//  Created by Christopher Villanueva on 4/25/18.
//  Copyright © 2018 Christopher Villanueva. All rights reserved.
//

import UIKit

class NotificationsDeleteController: UIViewController {
    
    let detailsView: UIView = {
        let view = UIView()
        view.backgroundColor = .ucmBlue
        view.layer.cornerRadius = 15
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.masksToBounds = true
        return view
    }()
    
    let dateLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .center
        label.backgroundColor = .ucmGold
        return label
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
    
    lazy var deleteButton: UIButton = {
        let button = UIButton()
        button.addTarget(self, action: #selector(handleDeleteFromNotifications), for: .touchUpInside)
        button.backgroundColor = .ucmGold
        button.titleLabel?.textColor = .white
        button.setTitle("Delete", for: .normal)
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
    
    let descriptionTextView: UITextView = {
        let textView = UITextView()
        textView.backgroundColor = .ucmBlue
        textView.textColor = .white
        textView.textAlignment = .left
        textView.isUserInteractionEnabled = false
        textView.font = UIFont.systemFont(ofSize: 20)
        return textView
    }()
    
    var notificationsController: NotificationsController?
    var indexPath: IndexPath?
    
    var savedCalendarEvent: CalendarEvent? {
        didSet {
            //titleLabel.text = calendarEvent?.name
            if let dayName = savedCalendarEvent?.dayName, let monthAbbrev = savedCalendarEvent?.monthAbbrev, let dayNumber = savedCalendarEvent?.dayNumber{
                let attributedText = NSMutableAttributedString(string: "Date : ", attributes: [NSAttributedStringKey.font : UIFont.systemFont(ofSize: 22), NSAttributedStringKey.foregroundColor: UIColor.white])
                attributedText.append(NSAttributedString(string: "\(dayName), \(monthAbbrev) \(dayNumber)", attributes: [NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 22), NSAttributedStringKey.foregroundColor: UIColor.white]))
                dateLabel.attributedText = attributedText
             //   self.monthAbbrev = monthAbbrev
             //   self.dayNumber = dayNumber
            }
            descriptionTextView.text = savedCalendarEvent?.name
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }

}


