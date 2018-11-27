//
//  LoginController.swift
//  FAARM
//
//  Created by Christopher Villanueva on 5/8/18.
//  Copyright © 2018 Christopher Villanueva. All rights reserved.
//

import UIKit
import Firebase

class LoginController: UIViewController {
    
    let customNavigationBar = CustomNavigationView()
    
    let returnArrow: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "back_arrow").withRenderingMode(.alwaysTemplate), for: .normal)
        button.tintColor = .white
        button.addTarget(self, action: #selector(handleDismiss), for: .touchUpInside)
        return button
    }()
    
    let dontHaveAccountButton: UIButton = {
        let button = UIButton(type: .system)
        let attributedTitle = NSMutableAttributedString(string: "Don't have an account? ", attributes: [NSAttributedStringKey.font : UIFont.systemFont(ofSize: 14), NSAttributedStringKey.foregroundColor: UIColor.lightGray])
        attributedTitle.append(NSAttributedString(string: "Sign Up", attributes: [NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 14), NSAttributedStringKey.foregroundColor: UIColor.ucmGold]))
        button.setAttributedTitle(attributedTitle, for: .normal)
       button.addTarget(self, action: #selector(handleShowSignUp), for: .touchUpInside)
        return button
    }()

    lazy var emailTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.textColor = .black
        let attributedPlaceholder: NSAttributedString = NSMutableAttributedString(string: "Email", attributes: [NSAttributedStringKey.foregroundColor: UIColor.lightGray])
        textField.attributedPlaceholder = attributedPlaceholder
        textField.borderStyle = .roundedRect
        textField.font = UIFont.systemFont(ofSize: 14)
        textField.isUserInteractionEnabled = true
        textField.addTarget(self, action: #selector(handleTextInputChange), for: .editingChanged)
        return textField
    }()
    
    lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.textColor = .black
        let attributedPlaceholder: NSAttributedString = NSMutableAttributedString(string: "Password", attributes: [NSAttributedStringKey.foregroundColor: UIColor.lightGray])
        textField.attributedPlaceholder = attributedPlaceholder
        textField.isSecureTextEntry = true
        textField.borderStyle = .roundedRect
        textField.font = UIFont.systemFont(ofSize: 14)
        textField.addTarget(self, action: #selector(handleTextInputChange), for: .editingChanged)
        return textField
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Login", for: .normal)
        button.backgroundColor = .ucmGold
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 5
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
        button.isEnabled = false
        return button
    }()
    
    let inputsStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        stackView.spacing = 12
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        self.hideKeyboardWhenTappedAround()
    }
    
    @objc private func handleLogin() {
        guard let email = emailTextField.text else { return }
        guard let password = passwordTextField.text else { return }
        Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
            
            if let error = error {
                print("Failed to sign in: ", error)
                return
            }
            print("Successfully logged in: ", user?.uid ?? "")
            self.dismiss(animated: true, completion: nil)
        }
    }
    
    
    @objc private func handleShowSignUp() {
        let registerController = RegisterController()
        registerController.loginController = self
        present(registerController, animated: true, completion: nil)
    }
    
    // Checks to see if all form fields have values entered
    // and correspondingly changes the button color
    @objc private func handleTextInputChange() {
        let isFormValid = emailTextField.text?.count ?? 0 > 0 && passwordTextField.text?.count ?? 0 > 0
        
        if isFormValid {
            loginButton.isEnabled = true
            loginButton.backgroundColor = .ucmGold
        } else {
            loginButton.isEnabled = false
            loginButton.backgroundColor = .lightGray
        }
        
    }
    
    @objc func handleDismiss() {
        dismiss(animated: true, completion: nil)
    }

}







