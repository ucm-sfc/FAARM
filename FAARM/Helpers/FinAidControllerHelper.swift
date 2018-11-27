//
//  FinAidControllerHelper.swift
//  FAARM
//
//  Created by Nathan Huizar on 4/11/18.
//  Copyright © 2018 Christopher Villanueva. All rights reserved.
//

import UIKit

extension FinAidController {
    
    
    @objc func createDirectCostWorksheetButton(image: UIImage, handler: Selector  ) -> UIButton {
        let button = UIButton()
        button.setImage(image, for: .normal)
        button.addTarget(self, action: handler, for: .touchUpInside)
        button.contentMode = .scaleAspectFill
        return button
    }
    
    
    
    @objc func createFinAidFormsButton(image: UIImage, handler: Selector  ) -> UIButton {
        let button = UIButton()
        button.setImage(image, for: .normal)
        button.addTarget(self, action: handler, for: .touchUpInside)
        button.contentMode = .scaleAspectFill
        return button
    }
    
    
    
    @objc func createFinWebsiteButton(image: UIImage, handler: Selector  ) -> UIButton {
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
