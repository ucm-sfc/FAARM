//
//  ContactFormController.swift
//  FAARM
//
//  Created by Christopher Villanueva on 4/4/18.
//  Copyright © 2018 Christopher Villanueva. All rights reserved.
//

import UIKit

class ContactFormController: UIViewController,UIScrollViewDelegate, UIPickerViewDelegate, UIPickerViewDataSource{
    
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
    
    let firstNameLabel: UILabel = {
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
        return view
    }()
    
    lazy var lastNameView: UserInputView = {
        let view = UserInputView()
        view.setTitles(title: "Last Name")
        return view
    }()
    
    lazy var emailView: UserInputView = {
        let view = UserInputView()
        view.setTitles(title: "Email")
        return view
    }()
    
    lazy var phoneNumberView: UserInputView = {
        let view = UserInputView()
        view.setTitles(title: "Phone Number")
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
    
    let descriptionView: UserInputView = {
        let view = UserInputView()
        view.setTitles(title: "Description of the Issue")
        return view
    }()
    
    let questionType = ["Please Select...", "Financial Aid", "Registrars Office", "Undergraduate Admissions", "Student Business Services", "Students First Center", "Graduate Division", "Academic Support Services"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .ucmBlue

        //let scrollView = UIScrollView(frame: CGRect(x: 0, y: 20, width: view.frame.width, height: view.frame.height))
        let scrollView = UIScrollView(frame: view.frame)
        scrollView.backgroundColor = .ucmBlue
        scrollView.contentSize = CGSize(width: scrollView.frame.size.width, height: scrollView.frame.size.height * 2)
        scrollView.isUserInteractionEnabled = true
        scrollView.isScrollEnabled = true
//        scrollView.contentInset = .zero
//       // scrollView.setContentOffset(CGPoint(x: 0, y: 0), animated: true)
        scrollView.delegate = self
        scrollView.contentInsetAdjustmentBehavior = .never
      
        scrollView.addSubview(returnArrow)
        scrollView.addSubview(headerLabel)
        scrollView.addSubview(userInputsStackView)
        scrollView.addSubview(questionTypeLabel)
        scrollView.addSubview(questionTypePickerView)
        scrollView.addSubview(descriptionView)
        view.addSubview(scrollView)
        
        let customNavBar = setupNavBar(imageForLogo: #imageLiteral(resourceName: "ContactUsTitle-1"), viewForAnchor: view)
        customNavBar.center = scrollView.center
       
        returnArrow.anchor(top: customNavBar.bottomAnchor, paddingTop: 10, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: nil, paddingRight: 0, width: 75, height: 75)
        returnArrow.addTarget(self, action: #selector(handleDismiss), for: .touchUpInside)
        
        
        headerLabel.anchor(top: customNavBar.bottomAnchor, paddingTop: 10, left: returnArrow.rightAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 75, width: 0, height: 75)
        
        userInputsStackView.addArrangedSubview(firstNameView)
        userInputsStackView.addArrangedSubview(lastNameView)
        userInputsStackView.addArrangedSubview(emailView)
        userInputsStackView.addArrangedSubview(phoneNumberView)
        
        userInputsStackView.anchor(top: headerLabel.bottomAnchor, paddingTop: 15, left: view.leftAnchor, paddingLeft: 40, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 40, width: 0, height: 360)
      
        
        questionTypeLabel.anchor(top: userInputsStackView.bottomAnchor, paddingTop: 15, left: view.leftAnchor, paddingLeft: 40, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 40, width: 0, height: 25)
        
        questionTypePickerView.anchor(top: questionTypeLabel.bottomAnchor, paddingTop: 8, left: view.leftAnchor, paddingLeft: 40, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 40, width: 0, height: 50)
        
        descriptionView.anchor(top: questionTypePickerView.bottomAnchor, paddingTop: 15, left: view.leftAnchor, paddingLeft: 40, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: 40, width: 0, height: 70)
        
        scrollView.scrollRectToVisible(CGRect(x: 0, y: view.frame.height / 2, width: view.frame.width, height: view.frame.width * 2), animated: true)
        
    }
    
    @objc func handleDismiss(){
        dismiss(animated: true, completion: nil)
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
}


//class UserInputView: UIView {
//
//    let inputLabel: UILabel = {
//        let label = UILabel()
//        label.text = ""
//        label.font = UIFont.boldSystemFont(ofSize: 18)
//        label.textColor = .white
//        label.numberOfLines = 0
//        label.textAlignment = .left
//        return label
//    }()
//
//    lazy var inputTextField: UITextField = {
//        let textField = UITextField()
//        textField.backgroundColor = .white
//        textField.tintColor = .black
//        textField.textColor = .black
//        let attributedPlaceholder: NSAttributedString = NSMutableAttributedString(string: "", attributes: [NSAttributedStringKey.foregroundColor: UIColor.white])
//        textField.attributedPlaceholder = attributedPlaceholder
//        textField.borderStyle = .roundedRect
//        textField.font = UIFont.systemFont(ofSize: 14)
//        textField.isUserInteractionEnabled = true
//        return textField
//    }()
//
//    func setTitles(title: String){
//        inputLabel.text = title
//        inputTextField.attributedPlaceholder = NSMutableAttributedString(string: title, attributes: [NSAttributedStringKey.foregroundColor: UIColor.black])
//    }
//
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//
//        addSubview(inputLabel)
//        addSubview(inputTextField)
//        inputLabel.anchor(top: topAnchor, paddingTop: 0, left: leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: rightAnchor, paddingRight: 0, width: 0, height: 25)
//        inputTextField.anchor(top: inputLabel.bottomAnchor, paddingTop: 8, left: leftAnchor, paddingLeft: 0, bottom: bottomAnchor, paddingBotton: 0, right: rightAnchor, paddingRight: 0, width: 0, height: 0)
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//}

