//
//  Extensions.swift
//  FAARM
//
//  Created by Christopher Villanueva on 3/14/18.
//  Copyright © 2018 Christopher Villanueva. All rights reserved.
//

import UIKit

extension UIColor {
    
    static let ucmBlue = UIColor.rgb(red: 9, green: 47, blue: 68)
    static let ucmGold = UIColor.rgb(red: 162, green: 144, blue: 98)
    
    // custom function to make creating custom colors easier
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
    
}

extension UIView {
    // custom anchor function to make using auto layout easier and less tedious
    func anchor(top: NSLayoutYAxisAnchor?, paddingTop: CGFloat, left: NSLayoutXAxisAnchor?, paddingLeft: CGFloat, bottom: NSLayoutYAxisAnchor?, paddingBotton: CGFloat, right: NSLayoutXAxisAnchor?, paddingRight: CGFloat, width: CGFloat, height: CGFloat){
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            self.topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        if let left = left {
            self.leftAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
        }
        if let bottom = bottom {
            self.bottomAnchor.constraint(equalTo: bottom, constant: -paddingBotton).isActive = true
        }
        if let right = right {
            self.rightAnchor.constraint(equalTo: right, constant: -paddingRight).isActive = true
        }
        if width != 0 {
            self.widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        if height != 0 {
            self.heightAnchor.constraint(equalToConstant: height).isActive = true
        }
    }
    
    class IndentedCellLabel: UILabel {
        override func drawText(in rect: CGRect) {
            let insets = UIEdgeInsets(top: 0, left: 8, bottom: 0, right: 8)
            let customRect = UIEdgeInsetsInsetRect(rect, insets)
            super.drawText(in: customRect)
        }
    }
}



extension UIViewController {
    
    class IndentedLabel: UILabel {
        override func drawText(in rect: CGRect) {
            let insets = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 0)
            let customRect = UIEdgeInsetsInsetRect(rect, insets)
            super.drawText(in: customRect)
        }
    }
    
    func setupNavBar(imageForLogo: UIImage, viewForAnchor: UIView) -> CustomNavigationView {
    
        let customMiniNavBar = CustomNavigationView()
        customMiniNavBar.logoImageView.image = imageForLogo
        view.addSubview(customMiniNavBar)
        customMiniNavBar.anchorMiniNavBar(view: viewForAnchor)
        
        return customMiniNavBar
    }
    
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    func presentRequiredLogin(){
        let loginController = LoginController()
        present(loginController, animated: true, completion: nil)
    }
    
    func formatDateObj(startDict: NSDictionary, dateFormatter: DateFormatter) -> [String] {
        
        var dateObject = Date()
        if let unformattedDate = startDict.value(forKey: "dateTime") as? String {
            dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
            dateObject = dateFormatter.date(from: unformattedDate) ?? Date()
        } else if let unformattedDate = startDict.value(forKey: "date") as? String {
            dateFormatter.dateFormat = "yyyy-MM-dd"
            dateObject = dateFormatter.date(from: unformattedDate) ?? Date()
        } else {
            dateFormatter.dateFormat = ""
            dateObject = dateFormatter.date(from: "") ?? Date()
        }
        //print(dateObject.timeIntervalSinceNow)
        dateFormatter.dateFormat = "MMM"
        let monthAbbrev = dateFormatter.string(from: dateObject)
        dateFormatter.dateFormat = "MM"
        let monthNum = dateFormatter.string(from: dateObject)
        dateFormatter.dateFormat = "dd"
        let dayNumber = dateFormatter.string(from: dateObject)
        dateFormatter.dateFormat = "EEE"
        let dayName = dateFormatter.string(from: dateObject)
        dateFormatter.dateFormat = "yyyy"
        let year = dateFormatter.string(from: dateObject)
        
        return [monthAbbrev,monthNum, dayNumber, dayName, year]
    }
    
    
}
