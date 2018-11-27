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
}

