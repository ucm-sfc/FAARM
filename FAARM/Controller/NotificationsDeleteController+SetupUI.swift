//
//  NotificationsDeleteController+SetupUI.swift
//  FAARM
//
//  Created by Christopher Villanueva on 5/9/18.
//  Copyright © 2018 Christopher Villanueva. All rights reserved.
//

import UIKit

extension NotificationsDeleteController {
    
    func setupUI(){
        
        view.backgroundColor = UIColor.init(white: 0, alpha: 0.75)
        view.addSubview(detailsView)
        
        detailsView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        detailsView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        detailsView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.75).isActive = true
        detailsView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.45).isActive = true
        
        detailsView.addSubview(dateLabel)
        detailsView.addSubview(descriptionTextView)
        detailsView.addSubview(buttonsStackView)
        buttonsStackView.addArrangedSubview(deleteButton)
        buttonsStackView.addArrangedSubview(cancelButton)
        
        dateLabel.anchor(top: detailsView.topAnchor, paddingTop: 0, left: detailsView.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: detailsView.rightAnchor, paddingRight: 0, width: 0, height: 50)
        descriptionTextView.anchor(top: dateLabel.bottomAnchor, paddingTop: 8, left: detailsView.leftAnchor, paddingLeft: 16, bottom: buttonsStackView.topAnchor, paddingBotton: 5, right: detailsView.rightAnchor, paddingRight: 8, width: 0, height: 0)
        
        let buttonHeight = view.frame.height * 0.6 * 0.1
        buttonsStackView.anchor(top: nil, paddingTop: 0, left: detailsView.leftAnchor, paddingLeft: 10, bottom: detailsView.bottomAnchor, paddingBotton: 10, right: detailsView.rightAnchor, paddingRight: 10, width: 0, height: buttonHeight)
        
    }
}
