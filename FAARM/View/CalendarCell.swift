//
//  CalendarCell.swift
//  FAARM
//
//  Created by Christopher Villanueva on 4/12/18.
//  Copyright © 2018 Christopher Villanueva. All rights reserved.
//

import UIKit

class CalendarCell: UITableViewCell {
    
    let titleLabel: IndentedCellLabel = {
        let label = IndentedCellLabel()
        label.text = "Testing this cell with some description"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
   
    
    let dateLabel: UILabel = {
        let label = UILabel()
        label.text = "12"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = .ucmGold
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
  
    let dayNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Thursday"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = .ucmGold
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    let goldMiddleDividerView: UIView = {
        let view = UIView()
        view.backgroundColor = .ucmGold
        return view
    }()
    
    let goldBottomDividerView: UIView = {
        let view = UIView()
        view.backgroundColor = .ucmGold
        return view
    }()
    
    /* This code block is meant to work with CalendarController
     * It works in hand with function cellForItem in CalendarController+TableView.swift
     * When this variable is assigned in that function, we update the values of this particular cell
     * according to the values in this CalendarEvent object.
     */
    var calendarEvent: CalendarEvent? {
        didSet {
            titleLabel.text = calendarEvent?.name
            
            if let monthAbbrev = calendarEvent?.monthAbbrev, let dayNumber = calendarEvent?.dayNumber, let year = calendarEvent?.year, let dayName = calendarEvent?.dayName {
                dateLabel.text = "\(monthAbbrev) \(year)"
                dayNameLabel.text = "\(dayName) \(dayNumber)"
            }
        }
    }
    
    /* This code block is meant to work with NotificationsController
     * It works in hand with function cellForItem in NotificationsController+UITableView.swift
     * When this variable is assigned in that function, we update the values of this particular cell
     * according to the values in this CalendarEvent object.
     */
    var savedCalendarEvent: CalendarEvent? {
        didSet {
            titleLabel.text = savedCalendarEvent?.name
            if let monthAbbrev = savedCalendarEvent?.monthAbbrev, let dayNumber = savedCalendarEvent?.dayNumber, let year = savedCalendarEvent?.year, let dayName = savedCalendarEvent?.dayName {
                dateLabel.text = "\(monthAbbrev) \(year)"
                dayNameLabel.text = "\(dayName) \(dayNumber)"
            }
        }
    }
    
    // Initialization function
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupUI()
    }
    
    /* setupUI:
     * Self explanatory. This functions adds and anchors of the components of the UI
     */
    private func setupUI() {
        
        backgroundColor = .ucmBlue
        
        addSubview(dateLabel)
        let numberHeight = frame.height * 0.7
        let numberDayWidth = frame.width * 0.33
        dateLabel.anchor(top: topAnchor, paddingTop: 10, left: leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: nil, paddingRight: 0, width: numberDayWidth, height: numberHeight)
        
        addSubview(dayNameLabel)
        dayNameLabel.anchor(top: dateLabel.bottomAnchor, paddingTop: 0, left: leftAnchor, paddingLeft: 0, bottom: bottomAnchor, paddingBotton: 10, right: dateLabel.rightAnchor, paddingRight: 0, width: 0, height: 0)
        
        addSubview(goldMiddleDividerView)
        goldMiddleDividerView.anchor(top: topAnchor, paddingTop: 0, left: dayNameLabel.rightAnchor, paddingLeft: 0, bottom: bottomAnchor, paddingBotton: 0, right: nil, paddingRight: 0, width: 2, height: 0)
        
        addSubview(titleLabel)
        let offsetPadding = frame.width * 0.33
        titleLabel.anchor(top: topAnchor, paddingTop: 0, left: leftAnchor, paddingLeft: offsetPadding, bottom: bottomAnchor, paddingBotton: 0, right: rightAnchor, paddingRight: 10, width: 0, height: 0)
        
        addSubview(goldBottomDividerView)
        goldBottomDividerView.anchor(top: titleLabel.bottomAnchor, paddingTop: 0, left: leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: rightAnchor, paddingRight: 0, width: 0, height: 2)

    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
