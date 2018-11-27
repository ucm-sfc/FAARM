//
//  CalendarController+SetupUI.swift
//  FAARM
//
//  Created by Christopher Villanueva on 5/9/18.
//  Copyright © 2018 Christopher Villanueva. All rights reserved.
//

import UIKit

extension CalendarController {
    
    /* setupUI:
     * Self explanatory. This function adds all the views into our UI
     * and anchors them accordingly. Return button and header label
     * make up the upper areas and then the table view takes over
     * the rest
     */
    func setupUI() {
        view.backgroundColor = .ucmBlue
        let customNavigationBar = setupNavBar(imageForLogo: #imageLiteral(resourceName: "Calendar Tab-1"), viewForAnchor: view)
        
        // Acts as a background for status bar and so text doesnt peek through
        view.addSubview(returnButton)
        returnButton.anchor(top: customNavigationBar.bottomAnchor, paddingTop: 0, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: nil, paddingRight: 0, width: 75, height: 75)
        
        view.addSubview(headerLabel)
        headerLabel.anchor(top: customNavigationBar.bottomAnchor, paddingTop: 0, left: returnButton.rightAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.safeAreaLayoutGuide.rightAnchor, paddingRight: 0, width: 0, height: 75)
        
        view.addSubview(tableView)
        tableView.anchor(top: headerLabel.bottomAnchor, paddingTop: 0, left: view.leftAnchor, paddingLeft: 0, bottom: view.bottomAnchor, paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 0)
        tableView.register(CalendarCell.self, forCellReuseIdentifier: cellId)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorColor = .clear
    }
    
    
}
