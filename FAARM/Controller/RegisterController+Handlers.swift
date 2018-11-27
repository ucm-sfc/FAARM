//
//  RegisterController+Handlers.swift
//  FAARM
//
//  Created by Christopher Villanueva on 5/9/18.
//  Copyright © 2018 Christopher Villanueva. All rights reserved.
//

import UIKit
import Firebase

extension RegisterController {
    
    @objc func handleSignUp() {
        guard let email = emailTextField.text, email.count > 0 else { return }
        guard let username = usernameTextField.text, username.count > 0 else { return }
        guard let usertype = userTypeTextField.text, usertype.count > 0 else { return }
        guard let password = passwordTextField.text, password.count >= 6 else { return }
        Auth.auth().createUser(withEmail: email, password: password) { (user, error) in
            
            if let error = error {
                print("Failed to create user: ", error)
                return
                // add a UI alert action later
            }
            
            guard let uid = user?.uid else { return }
            let dictionaryValues = ["username": username, "usertype": usertype]
            let values = [uid: dictionaryValues]
            
            Database.database().reference().child("users").updateChildValues(values, withCompletionBlock: { (err, ref) in
                if let err = err {
                    print("Failed to save user info into database: ", err)
                    return
                }
                
                print("Successfully created and saved user info")
                self.dismiss(animated: true, completion: {
                    self.loginController?.handleDismiss()
                })
            })
        }
    }
    
    @objc func handleShowLogin() {
        dismiss(animated: true, completion: nil)
    }
    
    @objc func handleDismiss() {
        dismiss(animated: true, completion: nil)
    }
    
    // Checks to see if all form fields have values entered
    // and correspondingly changes the button color
    @objc func handleTextInputChange() {
        let isFormValid = emailTextField.text?.count ?? 0 > 0 && usernameTextField.text?.count ?? 0 > 0 && passwordTextField.text?.count ?? 0 > 0
        
        if isFormValid {
            signUpButton.isEnabled = true
            signUpButton.backgroundColor = .ucmGold
        } else {
            signUpButton.isEnabled = false
            signUpButton.backgroundColor = .lightGray
        }
        
    }
}
