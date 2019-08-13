//
//  HomeHeaderCell.swift
//  FAARM
//
//  Created by Christopher Villanueva on 3/15/18.
//  Copyright © 2018 Christopher Villanueva. All rights reserved.
//

import UIKit
import SafariServices

class HomeHeaderCell: UICollectionViewCell {
    
    /*
     * Here we declare each of the different components that we
     * want to use to build our header view. Each components has its
     * own characteristics that we set inside their blocks
     */
    
    let customNavigationBar = CustomNavigationView()
    
    let announcementsImageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "Announcements"))
        imageView.contentMode = .scaleToFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let sfcImageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "SFC"))
        imageView.contentMode = .scaleToFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var checkInButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "CheckIn-1.png"), for: .normal)
        button.addTarget(self, action: #selector(handleCheckIn), for: .touchUpInside)
        return button
    }()
    
    let studentServicesImageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "Student Services"))
        imageView.contentMode = .scaleToFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
        
    }()
    
    var homeController: HomeController?
    
    @objc func handleCheckIn() {
        homeController?.handleCheckIn()
    }
    
    /* setupHeader:
     * This function will add everything we declared above this and anchor to the scene
     * The components are declared in order from top to bottom so that everything can
     * be anchored to one another
     */
    func setupHeader() {
        
        // Add Custom navigation bar and anchor it to this UIView
        addSubview(customNavigationBar)
        customNavigationBar.anchorNavBar(view: self)
        
        // Add and anchor the announcements label
        addSubview(announcementsImageView)
        announcementsImageView.anchor(top: customNavigationBar.bottomAnchor, paddingTop: 0, left: leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: rightAnchor, paddingRight: 0, width: 0, height: frame.height * 0.055)
        
        let imageSlider = HomeSliderView()
        //let imageSliderHeight = frame.height * 0.42
        imageSlider.screenWidth = frame.width // we need so that the slider knows how big the screen is
        imageSlider.screenHeight = frame.height
        imageSlider.setupView() // Get the view set up
        addSubview(imageSlider)
        addSubview(sfcImageView)
        imageSlider.anchor(top: announcementsImageView.bottomAnchor, paddingTop: 0, left: leftAnchor, paddingLeft: 0, bottom: sfcImageView.topAnchor, paddingBotton: 0, right: rightAnchor, paddingRight: 0, width: 0, height: 0)
        
        // Add and anchor the SFC label
        
        sfcImageView.anchor(top: announcementsImageView.bottomAnchor, paddingTop: frame.height * 0.4, left: leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: rightAnchor, paddingRight: 0, width: 0, height: frame.height * 0.055)
        
        // Add/anchor the check in button and the bottom label for the student services
        addSubview(checkInButton)
        addSubview(studentServicesImageView)
        checkInButton.anchor(top: sfcImageView.bottomAnchor, paddingTop: frame.height * 0.025, left: leftAnchor, paddingLeft: frame.width * 0.015, bottom: studentServicesImageView.topAnchor, paddingBotton: frame.height * 0.025, right: rightAnchor, paddingRight: frame.width * 0.015, width: 0, height: 0)
        
        studentServicesImageView.anchor(top: announcementsImageView.bottomAnchor, paddingTop: frame.height * 0.625, left: leftAnchor, paddingLeft: 0, bottom: bottomAnchor, paddingBotton: 15, right: rightAnchor, paddingRight: 0, width: 0, height: frame.height * 0.055)
        
        
    }
    
    /*
     * Initialization function, this calls setupHeader
     */
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHeader()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
