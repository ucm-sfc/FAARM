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
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let sfcImageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "SFC"))
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var checkInImageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "SFC Check In"))
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var checkInButton: UIButton = {
        let button = UIButton()
        button.setImage(checkInImageView.image, for: .normal)
        button.addTarget(self, action: #selector(handleCheckIn), for: .touchUpInside)
        return button
    }()
    
    let studentServicesImageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "Student Services"))
        imageView.contentMode = .scaleAspectFill
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
        announcementsImageView.anchor(top: customNavigationBar.bottomAnchor, paddingTop: 0, left: leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: rightAnchor, paddingRight: 0, width: 0, height: 20)
        
    //  Define image slider and then add/anchor it
    //  let imageSliderLayout = UICollectionViewLayout()
        
        let imageSlider = HomeSliderView()
        let imageSliderHeight = frame.width * 0.42
        imageSlider.screenWidth = frame.width // we need so that the slider knows how big the screen is
        imageSlider.setupView() // Get the view set up 
        addSubview(imageSlider)
        imageSlider.anchor(top: announcementsImageView.bottomAnchor, paddingTop: 0, left: leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: rightAnchor, paddingRight: 0, width: 0, height: imageSliderHeight)
        
        
        
        // Add and anchor the SFC label
        addSubview(sfcImageView)
        sfcImageView.anchor(top: imageSlider.bottomAnchor, paddingTop: 0, left: leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: rightAnchor, paddingRight: 0, width: 0, height: 20)
        
        // Add/anchor the check in button and the bottom label for the student services
        addSubview(checkInButton)
        addSubview(studentServicesImageView)
        checkInButton.anchor(top: sfcImageView.bottomAnchor, paddingTop: 10, left: leftAnchor, paddingLeft: 0, bottom: studentServicesImageView.topAnchor, paddingBotton: 10, right: rightAnchor, paddingRight: 0, width: 0, height: 0)

        studentServicesImageView.anchor(top: nil, paddingTop: 0, left: leftAnchor, paddingLeft: 0, bottom: bottomAnchor, paddingBotton: 15, right: rightAnchor, paddingRight: 0, width: 0, height: 20)
        
        
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
