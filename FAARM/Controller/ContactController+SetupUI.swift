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
        
        var contactButtonsWidth = view.frame.width * 0.7
        var contactButtonsHeight = view.frame.height * 0.19
        var socialButtonsWidth = view.frame.width * 0.975
        var socialButtonsHeight = view.frame.height * 0.125
        
        let model = UIDevice.current.model
        
        if (model != "iPhone" && model != "iPod"){
            contactButtonsWidth = view.frame.width * 0.65
            contactButtonsHeight = view.frame.height * 0.25
            socialButtonsWidth = view.frame.width * 0.9
            socialButtonsHeight = view.frame.height * 0.15
        }
        
        view.addSubview(headerLabel)
        headerLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: (view.frame.height * -1) * 0.2).isActive = true
        headerLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        headerLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        //headerLabel.heightAnchor.constraint(equalToConstant: 32).isActive = true
        
        if (model != "iPhone" && model != "iPod"){
            headerLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: (view.frame.height * -1) * 0.25).isActive = true
            //headerLabel.heightAnchor.constraint(equalToConstant: 45).isActive = true
        }
        
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
        
        contactButtonsStackView.anchor(top: headerLabel.bottomAnchor, paddingTop: 5, left: nil, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: nil, paddingRight: 0, width: contactButtonsWidth, height: contactButtonsHeight)
        contactButtonsStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        // created within extensions
        //let chatLabel = createContactLabel(text: "Live Chat")
        /*
        let callLabel = createContactLabel(text: "Call")
        let messageLabel = createContactLabel(text: "Message")
        
        // Add the three labels into the stack view and they will also
        // arrange themselves automatically
        view.addSubview(contactLabelsStackView)
       // contactLabelsStackView.addArrangedSubview(chatLabel)
        contactLabelsStackView.addArrangedSubview(callLabel)
        contactLabelsStackView.addArrangedSubview(messageLabel)
        contactLabelsStackView.anchor(top: contactButtonsStackView.bottomAnchor, paddingTop: 2.5, left: nil, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: nil, paddingRight: 0, width: 240, height: 25)
        contactLabelsStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        */
        let facebookButton = createContactButton(image: #imageLiteral(resourceName: "facebook"), handler: #selector(handleFacebook))
        let twitterButton = createContactButton(image: #imageLiteral(resourceName: "twitter"), handler: #selector(handleTwitter))
        let instagramButton = createContactButton(image: #imageLiteral(resourceName: "instagram"), handler: #selector(handleInstagram))
        let snapchatButton = createContactButton(image: #imageLiteral(resourceName: "snapchat"), handler: #selector(handleSnapchat))
        
        view.addSubview(socialLabel)
        socialLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: view.frame.height * 0.05).isActive = true
        socialLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        socialLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        //socialLabel.heightAnchor.constraint(equalToConstant: 32).isActive = true
        
        if (model != "iPhone" && model != "iPod"){
            socialLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: view.frame.height * 0.085).isActive = true
            //socialLabel.heightAnchor.constraint(equalToConstant: 45).isActive = true
        }
        
        view.addSubview(socialButtonsStackView)
        //contactButtonsStackView.addArrangedSubview(chatButton)
        socialButtonsStackView.addArrangedSubview(facebookButton)
        socialButtonsStackView.addArrangedSubview(twitterButton)
        socialButtonsStackView.addArrangedSubview(instagramButton)
        socialButtonsStackView.addArrangedSubview(snapchatButton)
        socialButtonsStackView.anchor(top: socialLabel.bottomAnchor, paddingTop: 5, left: nil, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: nil, paddingRight: 0, width: socialButtonsWidth, height: socialButtonsHeight)
        socialButtonsStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        //this adds a tap gesture to let users tap out of the contact view
        let Tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(handleDismiss))
        Tap.numberOfTapsRequired = 1
        view.addGestureRecognizer(Tap)
 }
}
