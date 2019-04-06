//
//  TFControllerHelper.swift
//  FAARM
//
//  Created by Nathan Huizar on 3/7/19.
//  Copyright © 2019 Christopher Villanueva. All rights reserved.
//

import UIKit

extension TFController {
    
    @objc func handleDismiss(){
        dismiss(animated: true, completion: nil)
    }
    
    @objc func createBackButton(image: UIImage, handler: Selector ) -> UIButton {
        let button = UIButton()
        button.setImage(image, for: .normal)
        button.addTarget(self, action: handler, for: .touchUpInside)
        button.contentMode = .scaleAspectFill
        button.tintColor = .white
        return button
    }
    
    
}
