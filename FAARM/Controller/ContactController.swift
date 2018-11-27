//
//  ContactController.swift
//  FAARM
//
//  Created by Christopher Villanueva on 3/29/18.
//  Copyright © 2018 Christopher Villanueva. All rights reserved.
//

import UIKit

class ContactController: UIViewController {
    
    // This links this controller to HomeController so that
    // we can call functions in HomeController properly
    var homeController: HomeController?
    
    let headerLabel: UILabel = {
        let label = UILabel()
        label.text = "Get your questions answered"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.backgroundColor = .clear
        label.numberOfLines = 1
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()
    
    lazy var dismissButton: UIButton = {
        let button = UIButton()
        button.tintColor = .white
        button.setImage(#imageLiteral(resourceName: "back_arrow").withRenderingMode(.alwaysTemplate), for: .normal)
        button.addTarget(self, action: #selector(handleDismiss), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let dimView: UIView = {
        let dim = UIView()
        dim.backgroundColor = UIColor.init(white: 0, alpha: 0.75)
        return dim
    }()
    
    let contactButtonsStackView: UIStackView = {
        let sv = UIStackView()
        sv.axis = .horizontal
        sv.distribution = .fillEqually
        sv.spacing = 15
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    let contactLabelsStackView: UIStackView = {
        let sv = UIStackView()
        sv.axis = .horizontal
        sv.distribution = .fillEqually
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(white: 0, alpha: 0.75)
        setupUI()
    }
    
    /*
     * This function handles calling the SFC number
     */
    @objc func handleCall() {
        let number = 2092287178
        if let url = URL(string: "tel://\(number)") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    /*
     *
     */
    @objc func handleEmail() {
        dismiss(animated: true) {
            self.homeController?.handleMessageForm()
        }
    }
    
    
    @objc func handleDismiss(){
        dismiss(animated: true, completion: nil)
    }
}

