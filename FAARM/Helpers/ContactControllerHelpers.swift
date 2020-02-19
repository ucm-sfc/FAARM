//
//  ContactControllerHelpers.swift
//  FAARM
//
//  Created by Christopher Villanueva on 3/29/18.
//  Copyright © 2018 Christopher Villanueva. All rights reserved.
//

import UIKit

extension ContactController {
    
    @objc func createContactButton(image: UIImage, handler: Selector  ) -> UIButton {
        let button = UIButton()
        button.setImage(image, for: .normal)
 
        button.addTarget(self, action: handler, for: .touchUpInside)
        button.contentMode = .scaleAspectFill
        return button
    }
    
    @objc func createSocialButton(image: UIImage, handler: Selector  ) -> UIButton {
        let button = UIButton()
        button.setImage(image, for: .normal)
        
        button.addTarget(self, action: handler, for: .touchUpInside)
        button.contentMode = .scaleAspectFill
        return button
    }
    
    func createContactLabel(text: String) -> UILabel {
        let label = UILabel()
        label.text = text
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 22)
        label.adjustsFontSizeToFitWidth = true
        return label
    }
    
    //handles social media profile urls
    struct SocialNetworkUrl {
        let scheme: String
        let page: String
        
        //definiton of loading social media profile
        func openPage() -> Bool {
            let schemeUrl = NSURL(string: scheme)!
            
            if UIApplication.shared.canOpenURL(schemeUrl as URL) || scheme == "snapchat://add/rufusbobcat" {
                
                var check = false
                
                UIApplication.shared.open(schemeUrl as URL, options: [:], completionHandler: { (result) in check = result })
                
                return check
            } else {
                return false
            }
        }
        
        func openPageWithinApp() -> NSURL{
            let pageUrl = NSURL(string: page)!
            return pageUrl
        }
        
    }
    
    //creates cases to load specific social media profile & declares a function to load social media profile
    enum SocialNetwork {
        case Facebook, Snapchat, Twitter, Instagram
        func url() -> SocialNetworkUrl {
            switch self {
            case .Facebook:
                return SocialNetworkUrl(scheme: "fb://profile/1226305467488925", page: "https://www.facebook.com/ucmrufusbobcat")
            case .Twitter:
                return SocialNetworkUrl(scheme: "twitter:///user?screen_name=rufusbobcat", page: "https://twitter.com/rufusbobcat")
            case .Snapchat:
                return SocialNetworkUrl(scheme: "snapchat://add/rufusbobcat", page: "https://www.snapchat.com/add/rufusbobcat")
            case .Instagram:
                return SocialNetworkUrl(scheme: "instagram://user?username=rufusbobcat", page:"https://www.instagram.com/rufusbobcat")
            }
        }
        func openPage() -> Bool {
            self.url().openPage()
        }
        func openPageWithinApp() -> NSURL {
            self.url().openPageWithinApp()
        }
    }
}

