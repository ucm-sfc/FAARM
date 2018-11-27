//
//  UserTextInput.swift
//  FAARM
//
//  Created by Christopher Villanueva on 4/16/18.
//  Copyright © 2018 Christopher Villanueva. All rights reserved.
//

import UIKit

class UserInputView: UIView {
    
    let inputLabel: UILabel = {
        let label = UILabel()
        label.text = ""
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .left
        return label
    }()
    
    lazy var inputTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.tintColor = .black
        textField.textColor = .black
        let attributedPlaceholder: NSAttributedString = NSMutableAttributedString(string: "", attributes: [NSAttributedStringKey.foregroundColor: UIColor.white])
        textField.attributedPlaceholder = attributedPlaceholder
        textField.borderStyle = .roundedRect
        textField.font = UIFont.systemFont(ofSize: 14)
        textField.isUserInteractionEnabled = true
        return textField
    }()
    
    func setTitles(title: String){
        inputLabel.text = title
        inputTextField.attributedPlaceholder = NSMutableAttributedString(string: title, attributes: [NSAttributedStringKey.foregroundColor: UIColor.black])
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(inputLabel)
        addSubview(inputTextField)
        inputLabel.anchor(top: topAnchor, paddingTop: 0, left: leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: rightAnchor, paddingRight: 0, width: 0, height: 25)
        inputTextField.anchor(top: inputLabel.bottomAnchor, paddingTop: 8, left: leftAnchor, paddingLeft: 0, bottom: bottomAnchor, paddingBotton: 0, right: rightAnchor, paddingRight: 0, width: 0, height: 0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

