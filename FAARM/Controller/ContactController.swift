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
        label.text = "Get your questions answered!"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 24)
        
        let model = UIDevice.current.model
        
        if (model != "iPhone" && model != "iPod"){
            label.font = UIFont.boldSystemFont(ofSize: 40)
        }
        
        label.backgroundColor = .clear
        label.numberOfLines = 1
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()
    
    let socialLabel: UILabel = {
        let label = UILabel()
        label.text = "Follow us on social media!"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 24)
        
        let model = UIDevice.current.model
        
        if (model != "iPhone" && model != "iPod"){
            label.font = UIFont.boldSystemFont(ofSize: 40)
        }
        
        label.backgroundColor = .clear
        label.numberOfLines = 1
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
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
    /*
    let contactLabelsStackView: UIStackView = {
        let sv = UIStackView()
        sv.axis = .horizontal
        sv.distribution = .fillEqually
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    */
    let socialButtonsStackView: UIStackView = {
        let sv = UIStackView()
        sv.axis = .horizontal
        sv.distribution = .fillEqually
        sv.spacing = 10
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
            UIApplication.shared.open(url, options: convertToUIApplicationOpenExternalURLOptionsKeyDictionary([:]), completionHandler: nil)
        }
    }
    
    /*
     * This function handles the contact form for the SFC
     */
    @objc func handleEmail() {
        dismiss(animated: true) {
            self.homeController?.handleMessageForm()
        }
    }
    
    //URL handlers derived from ContactControllerHelpers.swift
    @objc func handleFacebook(){
        SocialNetwork.Facebook.openPage()
    }
    @objc func handleTwitter(){
        SocialNetwork.Twitter.openPage()
    }
    @objc func handleInstagram(){
        SocialNetwork.Instagram.openPage()
    }
    @objc func handleSnapchat(){
        SocialNetwork.Snapchat.openPage()
    }
    
    @objc func handleDismiss(){
        dismiss(animated: true, completion: nil)
    }
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertToUIApplicationOpenExternalURLOptionsKeyDictionary(_ input: [String: Any]) -> [UIApplication.OpenExternalURLOptionsKey: Any] {
	return Dictionary(uniqueKeysWithValues: input.map { key, value in (UIApplication.OpenExternalURLOptionsKey(rawValue: key), value)})
}
