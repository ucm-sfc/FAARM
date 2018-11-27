//
//  HomeController+SetUpCollectionView.swift
//  FAARM
//
//  Created by Christopher Villanueva on 3/20/18.
//  Copyright © 2018 Christopher Villanueva. All rights reserved.
//

import UIKit

extension HomeController {
    
    // Initialize and Register Collection View
    func setupCollectionView() {
        collectionView?.backgroundColor = .ucmBlue
        collectionView?.register(HomeHeaderCell.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: headerId)
        collectionView?.register(HomeBodyCell.self, forCellWithReuseIdentifier: bodyId)
    }
    
    // Start of Collection View Functions
    //
    // Start of Header Functions
    //
    // This functions tells us to use HomeHeaderCell as the cell for
    // the header
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerId, for: indexPath) as! HomeHeaderCell
        header.homeController = self
        return header
    }
    
    // This tells the collection view how big to make the header
    // We do these calculations so that the header fills up the rest
    // of the screen other than the icons. It's easy for us to know how much
    // space the icons take up so subtract that from the full screen size
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        
        let bodyCellHeight = view.safeAreaLayoutGuide.layoutFrame.width / 3
        let bodyHeight = bodyCellHeight * 2
        let headerHeight = view.safeAreaLayoutGuide.layoutFrame.height - bodyHeight
        return CGSize(width: view.frame.width, height: headerHeight )
    }
    // End of Header Functions
    //
    //
    //
    // Start of Body Functions
    //
    // This function tells the collection view to use our
    // HomeBodyCell as the cells for this collection
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: bodyId, for: indexPath) as! HomeBodyCell
        cell.iconImageView.image = iconImages[indexPath.item]
        return cell
    }
    
    
    // This functions tells the collection view how big to
    // make our cells
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let squareWidth = view.frame.width / 3
        return CGSize(width: squareWidth, height: squareWidth)
    }
    
    // This functions tells the collection view how many
    // cells to make
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    // End of Body Functions
    // Spacing Functions - We call these so that theres no extra spacing
    // that we dont want, so we return 0
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    // End of CollectionView Functions
    
    
    
}
