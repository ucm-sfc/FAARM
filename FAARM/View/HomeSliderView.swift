//
//  HomeSliderView.swift
//  FAARM
//
//  Created by Christopher Villanueva on 3/28/18.
//  Copyright © 2018 Christopher Villanueva. All rights reserved.
//

import UIKit
import Firebase

class HomeSliderView: UIView, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    
    private let cellId = "cellId"
    let sliderImages = [#imageLiteral(resourceName: "SFC Hours for Nate's App-2"),#imageLiteral(resourceName: "App-highlights"),#imageLiteral(resourceName: "Web-checkIn"),#imageLiteral(resourceName: "SFC DS-1")]
    
    //TODO: retrieve images from "images" folder BELOW HERE!
    
    func listAllFiles(){}
    
    //TODO: retrieve images from "images" folder ABOVE HERE!
    
    // We use this to know how big the screen is
    var screenWidth: CGFloat?
    var screenHeight: CGFloat?
    
    var imageSliderPaddingTop: CGFloat?
    var imageSliderPaddingBottom: CGFloat?
    
    let rufusImageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "Rufus"))
        imageView.contentMode = .scaleToFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let imageSliderView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.isPagingEnabled = true
        cv.indicatorStyle = UIScrollView.IndicatorStyle.white
        
        return cv
    }()
    
    // This function will set up the the way our slider will look.
    // It needs to be called manually from wherever you create this slider (HomeHeaderCell)
    func setupView() {
        
        backgroundColor = .white
        addSubview(rufusImageView)
        
        guard let screenWidth = screenWidth else { return }
        let rufusWidth = screenWidth / 3
        rufusImageView.anchor(top: topAnchor, paddingTop: 0, left: leftAnchor, paddingLeft: 0, bottom: bottomAnchor, paddingBotton: 0, right: nil, paddingRight: 0, width: rufusWidth, height: 0)
        
        imageSliderView.dataSource = self
        imageSliderView.delegate = self
        imageSliderView.register(HomeSliderCell.self, forCellWithReuseIdentifier: cellId)
        addSubview(imageSliderView)
        
        imageSliderPaddingTop = rufusImageView.frame.height * 0.0075
        imageSliderPaddingBottom = rufusImageView.frame.height * 0.0075
        
        let model = UIDevice.current.model
        
        if (model != "iPhone" && model != "iPod"){
            imageSliderPaddingTop = rufusImageView.frame.height * 0.005
            imageSliderPaddingBottom = rufusImageView.frame.height * 0.005
        }
        
        imageSliderView.anchor(top: topAnchor, paddingTop: imageSliderPaddingTop!, left: rufusImageView.rightAnchor, paddingLeft: screenWidth * 0.03, bottom: bottomAnchor, paddingBotton: imageSliderPaddingBottom!, right: rightAnchor, paddingRight: screenWidth * 0.03, width: 0, height: 0)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return sliderImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! HomeSliderCell
        cell.flyerImageView.image = sliderImages[indexPath.item]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: imageSliderView.frame.width, height: imageSliderView.frame.height)
    }
    
    // Spacing functions, WE DONT WANT NO SPACE
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        //starts a timer that scrolls through the images every 4 seconds
        _ =  Timer.scheduledTimer(timeInterval: 5.0, target: self, selector: #selector(scrollImages), userInfo: nil, repeats: true)
    }
    
    @objc func scrollImages(){
        for cell in imageSliderView.visibleCells {
            //grabs current images' index path
            let indexPath: IndexPath? = imageSliderView.indexPath(for: cell)
            if ((indexPath?.row)! < sliderImages.count - 1){
                //initialize an index path
                let indexPath1: IndexPath?
                
                //sets the index path to the next one after the current one
                indexPath1 = IndexPath.init(row: (indexPath?.row)! + 1, section: (indexPath?.section)!)
                
                //scrolls to the chosen index path
                imageSliderView.scrollToItem(at: indexPath1!, at: .right, animated: true)
            }
            else{
                //initialize an index path
                let indexPath1: IndexPath?
                
                //sets the index path to zero, or the first item
                indexPath1 = IndexPath.init(row: 0, section: (indexPath?.section)!)
                
                //scrolls to the first image
                imageSliderView.scrollToItem(at: indexPath1!, at: .left, animated: true)
            }
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class HomeSliderCell: UICollectionViewCell {
    
    let borderView: UIView = {
        let view = UIView()
        view.backgroundColor = .ucmBlue
        return view
    }()
    
    let flyerImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.layer.masksToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(borderView)
        borderView.anchor(top: topAnchor, paddingTop: 0, left: leftAnchor, paddingLeft: 0, bottom: bottomAnchor, paddingBotton: 0, right: rightAnchor, paddingRight: 0, width: 0, height: 0)
        
        addSubview(flyerImageView)
        flyerImageView.anchor(top: topAnchor, paddingTop: 0, left: leftAnchor, paddingLeft: 0, bottom: bottomAnchor, paddingBotton: 0, right: rightAnchor, paddingRight: 0, width: 0, height: 0)
        flyerImageView.isUserInteractionEnabled = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
