//
//  NotificationsController+SetupUI.swift
//  FAARM
//
//  Created by Christopher Villanueva on 5/9/18.
//  Copyright © 2018 Christopher Villanueva. All rights reserved.
//

import UIKit

extension NotificationsController {
    
    func setupUI() {
        
        let customNavigationBar = setupNavBar(imageForLogo: #imageLiteral(resourceName: "Notifications-1"), viewForAnchor: view)
        
        view.addSubview(returnButton)
        returnButton.anchor(top: customNavigationBar.bottomAnchor, paddingTop: 0, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: nil, paddingRight: 0, width: 75, height: 75)
        
        view.addSubview(headerLabel)
        headerLabel.anchor(top: customNavigationBar.bottomAnchor, paddingTop: 0, left: returnButton.rightAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.safeAreaLayoutGuide.rightAnchor, paddingRight: 0, width: 0, height: 75)
        
        view.addSubview(tableView)
        tableView.anchor(top: headerLabel.bottomAnchor, paddingTop: 0, left: view.leftAnchor, paddingLeft: 0, bottom: view.bottomAnchor, paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 0)
        
        view.addSubview(profileButton)
        profileButton.anchor(top: nil, paddingTop: 0, left: view.leftAnchor, paddingLeft: 16, bottom: view.bottomAnchor, paddingBotton: 16, right: nil, paddingRight: 0, width: 60, height: 60)
        
        tableView.register(CalendarCell.self, forCellReuseIdentifier: cellId)
        tableView.delegate = self
        tableView.dataSource = self
    }
}

