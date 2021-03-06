//
//  CustomNavigationView.swift
//  FAARM
//
//  Created by Christopher Villanueva on 3/20/18.
//  Copyright © 2018 Christopher Villanueva. All rights reserved.
//

import UIKit
import SafariServices

class CustomNavigationView: UIView {

    lazy var logoImageView: UIButton = {
        let imageView = UIButton()
        imageView.setImage(#imageLiteral(resourceName: "SFC-NAV-LOGO"), for: .normal)
        imageView.contentMode = .scaleToFill
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(logoImageView)
        logoImageView.anchor(top: topAnchor, paddingTop: 0, left: leftAnchor, paddingLeft: 0, bottom: bottomAnchor, paddingBotton: 0, right: rightAnchor, paddingRight: 0, width: 0, height: 0)
    }
    
    func anchorNavBar(view: UIView){
        let navBarHeight = view.frame.height * 0.22
        self.anchor(top: view.topAnchor, paddingTop: 0, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.rightAnchor, paddingRight: -1, width: 0, height: navBarHeight)
    }
    
    func anchorMiniNavBar(view: UIView){
        let miniNavBarheight = view.frame.width * 0.145 //0.145
        self.anchor(top: view.safeAreaLayoutGuide.topAnchor, paddingTop: 0, left: view.safeAreaLayoutGuide.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.safeAreaLayoutGuide.rightAnchor, paddingRight: 0, width: 0, height: miniNavBarheight)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
