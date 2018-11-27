//
//  RegisterController+SetupUI.swift
//  FAARM
//
//  Created by Christopher Villanueva on 5/9/18.
//  Copyright © 2018 Christopher Villanueva. All rights reserved.
//

import UIKit

extension RegisterController {
    
    func setupUI() {
        view.backgroundColor = .ucmBlue
        
        // Add Custom navigation bar and anchor it to this UIView
        let customNavigationBar = CustomNavigationView()
        view.addSubview(customNavigationBar)
        customNavigationBar.anchorNavBar(view: self.view)
        
        view.addSubview(alreadyHaveAccountButton)
        view.addSubview(returnArrow)
        alreadyHaveAccountButton.anchor(top: nil, paddingTop: 0, left: view.leftAnchor, paddingLeft: 0, bottom: view.safeAreaLayoutGuide.bottomAnchor, paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 50)
        
        returnArrow.anchor(top: customNavigationBar.bottomAnchor, paddingTop: 10, left:  view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: nil, paddingRight: 0, width: 75, height: 75)
        
        
        inputsStackView.addArrangedSubview(emailTextField)
        inputsStackView.addArrangedSubview(usernameTextField)
        inputsStackView.addArrangedSubview(passwordTextField)
        inputsStackView.addArrangedSubview(userTypeTextField)
        inputsStackView.addArrangedSubview(signUpButton)
        
        view.addSubview(inputsStackView)
        inputsStackView.anchor(top: returnArrow.bottomAnchor, paddingTop: 40, left: view.safeAreaLayoutGuide.leftAnchor, paddingLeft: 40, bottom: nil, paddingBotton: 0, right: view.safeAreaLayoutGuide.rightAnchor, paddingRight: 40, width: 0, height: 300)
    }
}
