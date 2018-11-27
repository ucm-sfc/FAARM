//
//  MessageView.swift
//  FAARM
//
//  Created by Christopher Villanueva on 4/16/18.
//  Copyright © 2018 Christopher Villanueva. All rights reserved.
//

import UIKit


class MessageView: UICollectionViewCell, UIPickerViewDelegate, UIPickerViewDataSource {

    let returnArrow: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "back_arrow").withRenderingMode(.alwaysTemplate), for: .normal)
        button.tintColor = .white
        return button
    }()
    
    let headerLabel: UILabel = {
        let label = UILabel()
        label.text = "Contact Us or Submit Feedback"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    let userInputsStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        stackView.spacing = 20
        return stackView
    }()
    
    lazy var firstNameView: UserInputView = {
        let view = UserInputView()
        view.setTitles(title: "First Name")
        view.inputTextField.addTarget(self, action: #selector(handleTextInputChange), for: .editingChanged)
        return view
    }()
    
    lazy var lastNameView: UserInputView = {
        let view = UserInputView()
        view.setTitles(title: "Last Name")
        view.inputTextField.addTarget(self, action: #selector(handleTextInputChange), for: .editingChanged)
        return view
    }()
    
    lazy var emailView: UserInputView = {
        let view = UserInputView()
        view.setTitles(title: "Email")
        view.inputTextField.addTarget(self, action: #selector(handleTextInputChange), for: .editingChanged)
        return view
    }()
    
    lazy var phoneNumberView: UserInputView = {
        let view = UserInputView()
        view.setTitles(title: "Phone Number")
        view.inputTextField.addTarget(self, action: #selector(handleTextInputChange), for: .editingChanged)
        return view
    }()
    
    let questionTypeLabel: UILabel = {
        let label = UILabel()
        label.text = "My question is about"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .left
        return label
    }()
    
    lazy var questionTypePickerView: UIPickerView = {
        let picker = UIPickerView()
        picker.backgroundColor = .white
        picker.tintColor = .white
        picker.delegate = self
        picker.dataSource = self
        return picker
    }()
    
    lazy var descriptionView: UserInputView = {
        let view = UserInputView()
        view.setTitles(title: "Description of the Issue")
        view.inputTextField.addTarget(self, action: #selector(handleTextInputChange), for: .editingChanged)
        return view
    }()
    
    let customNavBar: CustomNavigationView = {
        let navbar = CustomNavigationView()
        navbar.logoImageView.image = #imageLiteral(resourceName: "ContactUsTitle-1")
        return navbar
    }()
    
    let messageLabel: UILabel = {
        let label = UILabel()
        label.text = "Message"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .left
        return label
    }()
    
    lazy var messageTextView: UITextView = {
        let textView = UITextView()
        textView.backgroundColor = .white
        textView.isEditable = true
        textView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTextInputChange)))
        return textView
    }()
    
    lazy var submitButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Submit", for: .normal)
        button.backgroundColor = .gray
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 5
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.addTarget(self, action: #selector(handleSubmit), for: .editingChanged)
        button.isEnabled = false
        return button
    }()
    
    var messageController: MessageController?
    
    
    let questionType = ["Please Select...", "Financial Aid", "Registrars Office", "Undergraduate Admissions", "Student Business Services", "Students First Center", "Graduate Division", "Academic Support Services"]
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        setupUI()
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 8
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let label = "\(questionType[row])"
        return label
    }
    
    @objc private func handleTextInputChange() {
        let isFormValid = firstNameView.inputTextField.text?.count ?? 0 > 0 && lastNameView.inputTextField.text?.count ?? 0 > 0 && emailView.inputTextField.text?.count ?? 0 > 0 && phoneNumberView.inputTextField.text?.count ?? 0 > 0 && descriptionView.inputTextField.text?.count ?? 0 > 0 /* && messageTextView.text.count > 0*/
    
        
        if isFormValid {
            submitButton.isEnabled = true
            submitButton.backgroundColor = .ucmGold
        } else {
            submitButton.isEnabled = false
            submitButton.backgroundColor = .gray
        }
    }
    
    func setupUI() {
        
        backgroundColor = .ucmBlue
    
        addSubview(customNavBar)
        customNavBar.anchorMiniNavBar(view: self)
        
        addSubview(returnArrow)
        addSubview(headerLabel)
        addSubview(userInputsStackView)
        addSubview(questionTypeLabel)
        addSubview(questionTypePickerView)
        addSubview(descriptionView)
        addSubview(messageLabel)
        addSubview(messageTextView)
        addSubview(submitButton)
        
        returnArrow.anchor(top: customNavBar.bottomAnchor, paddingTop: 10, left: leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: nil, paddingRight: 0, width: 75, height: 75)
     
        returnArrow.addTarget(self, action: #selector(handleDismiss), for: .touchUpInside)
        
        
        headerLabel.anchor(top: customNavBar.bottomAnchor, paddingTop: 10, left: returnArrow.rightAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: rightAnchor, paddingRight: 75, width: 0, height: 75)
        
        userInputsStackView.addArrangedSubview(firstNameView)
        userInputsStackView.addArrangedSubview(lastNameView)
        userInputsStackView.addArrangedSubview(emailView)
        userInputsStackView.addArrangedSubview(phoneNumberView)
        
        userInputsStackView.anchor(top: headerLabel.bottomAnchor, paddingTop: 15, left: leftAnchor, paddingLeft: 40, bottom: nil, paddingBotton: 0, right: rightAnchor, paddingRight: 40, width: 0, height: 360)
        
        questionTypeLabel.anchor(top: userInputsStackView.bottomAnchor, paddingTop: 15, left: leftAnchor, paddingLeft: 40, bottom: nil, paddingBotton: 0, right: rightAnchor, paddingRight: 40, width: 0, height: 25)
        
        questionTypePickerView.anchor(top: questionTypeLabel.bottomAnchor, paddingTop: 8, left: leftAnchor, paddingLeft: 40, bottom: nil, paddingBotton: 0, right: rightAnchor, paddingRight: 40, width: 0, height: 50)
        
        descriptionView.anchor(top: questionTypePickerView.bottomAnchor, paddingTop: 15, left: leftAnchor, paddingLeft: 40, bottom: nil, paddingBotton: 0, right: rightAnchor, paddingRight: 40, width: 0, height: 70)
        
        messageLabel.anchor(top: descriptionView.bottomAnchor, paddingTop: 15, left: leftAnchor, paddingLeft: 40, bottom: nil, paddingBotton: 0, right: rightAnchor, paddingRight: 40, width: 0, height: 25)
        
        messageTextView.anchor(top: messageLabel.bottomAnchor, paddingTop: 8, left: leftAnchor, paddingLeft: 40, bottom: nil, paddingBotton: 0, right: rightAnchor, paddingRight: 40, width: 0, height: 350)
        
        submitButton.anchor(top: messageTextView.bottomAnchor, paddingTop: 25, left: leftAnchor, paddingLeft: 40, bottom: nil, paddingBotton: 0, right: rightAnchor, paddingRight: 40, width: 0, height: 60)
        
    }
    
    @objc func handleDismiss(){
        messageController?.handleDismiss()
    }
    @objc func handleSubmit(){
        messageController?.handleSubmit()
    }

    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}





