//
//  VideosControllerHelper.swift
//  FAARM
//
//  Created by Nathan Huizar on 4/5/18.
//  Copyright © 2018 Christopher Villanueva. All rights reserved.
//

import UIKit

extension VideosController {

    @objc func createFATVButton(image: UIImage, handler: Selector  ) -> UIButton {
        let button = UIButton()
        button.setImage(image, for: .normal)
        button.addTarget(self, action: handler, for: .touchUpInside)
        button.contentMode = .scaleAspectFill
        return button
    }
    
    @objc func createHowToButton(image: UIImage, handler: Selector  ) -> UIButton {
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
