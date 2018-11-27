//
//  CalendarController.swift
//  FAARM
//
//  Created by Christopher Villanueva on 4/7/18.
//  Copyright © 2018 Christopher Villanueva. All rights reserved.
//

import UIKit

class CalendarController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // Create the table view for our calendar
    let tableView: UITableView = {
        let tv = UITableView(frame: .zero)
        tv.backgroundColor = .ucmBlue
        return tv
    }()
    
    // Create the return button
    lazy var returnButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "back_arrow").withRenderingMode(.alwaysTemplate), for: .normal)
        button.addTarget(self, action: #selector(handleDismiss), for: .touchUpInside)
        button.tintColor = .white
        button.backgroundColor = .ucmBlue
        return button
    }()
    
    // Create the header label
    let headerLabel: UILabel = {
        let label = UILabel()
        label.text = "Upcoming Deadlines"
        label.font = UIFont.boldSystemFont(ofSize: 28)
        label.textColor = .white
        label.backgroundColor = .ucmBlue
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    let cellId = "cellId"
    let calendarUrl = "https://www.googleapis.com/calendar/v3/calendars/nhuizar3@gmail.com/events?key=AIzaSyAIhwddROqkHVggMRyX_XLG4H5TqlC65Zs"
    
    // This is the tool that helps us parse and
    // make sense of the dates we get from
    let dateFormatter = DateFormatter()
    
    /* This array holds our calendar entires we fetch
     * them from our database, we then use this array
     * to fill in the entries for our tableView
     */
    var calendarEvents = [CalendarEvent]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        fetchCalendarEvents()
    }
    
    // Dismiss this view controller
    @objc func handleDismiss() {
        dismiss(animated: true, completion: nil)
    }
    
}
