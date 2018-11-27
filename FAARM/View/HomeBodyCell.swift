//
//  HomeBodyCell.swift
//  FAARM
//
//  Created by Christopher Villanueva on 3/15/18.
//  Copyright © 2018 Christopher Villanueva. All rights reserved.
//

import UIKit

class HomeBodyCell: UICollectionViewCell {
    
    // This initializes and gives proper
    // setings to the icons
    let iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .red
        return imageView
    }()
    
    // Add and anchor the icon properly within its cell
    func setupCell() {
        addSubview(iconImageView)
        iconImageView.anchor(top: topAnchor, paddingTop: 0, left: leftAnchor, paddingLeft: 15, bottom: bottomAnchor, paddingBotton: 15, right: rightAnchor, paddingRight: 15, width: 0, height: 0)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupCell()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
