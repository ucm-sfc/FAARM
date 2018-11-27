//
//  AdmissionsControllerHelper.swift
//  FAARM
//
//  Created by Nathan Huizar on 4/5/18.
//  Copyright © 2018 Christopher Villanueva. All rights reserved.
//

import UIKit


extension AdmissionsController {


@objc func createAdmissionsButton(image: UIImage, handler: Selector  ) -> UIButton {
    let button = UIButton()
    button.setImage(image, for: .normal)
    button.addTarget(self, action: handler, for: .touchUpInside)
    button.contentMode = .scaleAspectFill
    return button
}
    
    
@objc func createWebsiteButton(image: UIImage, handler: Selector  ) -> UIButton {
    let button = UIButton()
    button.setImage(image, for: .normal)
    button.addTarget(self, action: handler, for: .touchUpInside)
    button.contentMode = .scaleAspectFill
    return button
    }
    
    @objc func createBackButton(image: UIImage, handler: Selector ) -> UIButton {
        let button = UIButton()
        button.setImage(image, for: .normal)
        button.addTarget(self, action: handler, for: .touchUpInside)
        button.contentMode = .scaleAspectFill
        return button
    }

}
