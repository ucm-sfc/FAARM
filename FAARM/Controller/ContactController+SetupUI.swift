//
//  ContactController+SetupUI.swift
//  FAARM
//
//  Created by Christopher Villanueva on 3/29/18.
//  Copyright © 2018 Christopher Villanueva. All rights reserved.
//

import UIKit

extension ContactController {
    /*
     * This function does everything involving setting up what you see
     * We use Stack Views to hold our buttons and labels because its really
     * easy to space and organize things this way, it takes a lot less code
     */
    func setupUI() {
        view.addSubview(headerLabel)
        headerLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100).isActive = true
        headerLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        headerLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        headerLabel.heightAnchor.constraint(equalToConstant: 32).isActive = true
        
        // created within extensions
        //let chatButton = createContactButton(image: #imageLiteral(resourceName: "chat"), handler: #selector(handleChat))
        let callButton = createContactButton(image: #imageLiteral(resourceName: "call"), handler: #selector(handleCall))
        let emailButton = createContactButton(image: #imageLiteral(resourceName: "email"), handler: #selector(handleEmail))
        
        // Add the three buttons into the stack view and they will arrange
        // themselves automatically just how we want them
        view.addSubview(contactButtonsStackView)
        //contactButtonsStackView.addArrangedSubview(chatButton)
        contactButtonsStackView.addArrangedSubview(callButton)
        contactButtonsStackView.addArrangedSubview(emailButton)
        contactButtonsStackView.anchor(top: headerLabel.bottomAnchor, paddingTop: 16, left: nil, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: nil, paddingRight: 0, width: 220, height: 100)
        contactButtonsStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        // created within extensions
        //let chatLabel = createContactLabel(text: "Live Chat")
        let callLabel = createContactLabel(text: "Call")
        let messageLabel = createContactLabel(text: "Message")
        
        // Add the three labels into the stack view and they will also
        // arrange themselves automatically
        view.addSubview(contactLabelsStackView)
       // contactLabelsStackView.addArrangedSubview(chatLabel)
        contactLabelsStackView.addArrangedSubview(callLabel)
        contactLabelsStackView.addArrangedSubview(messageLabel)
        contactLabelsStackView.anchor(top: contactButtonsStackView.bottomAnchor, paddingTop: 16, left: nil, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: nil, paddingRight: 0, width: 240, height: 25)
        contactLabelsStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.addSubview(dismissButton)
        dismissButton.anchor(top: nil, paddingTop: 0, left: view.leftAnchor, paddingLeft: 0, bottom: view.safeAreaLayoutGuide.bottomAnchor, paddingBotton: 0, right: nil, paddingRight: 10, width: 75, height: 100)
    }
}
