//
//  MessageController.swift
//  FAARM
//
//  Created by Christopher Villanueva on 4/16/18.
//  Copyright © 2018 Christopher Villanueva. All rights reserved.
//

import UIKit
import MessageUI

class MessageController: UICollectionViewController, UICollectionViewDelegateFlowLayout, MFMailComposeViewControllerDelegate {
    
    private let cellId = "cellId"
    private let headerId = "headerId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.backgroundColor = .ucmBlue
        collectionView?.register(MessageView.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: headerId)
        collectionView?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellId)
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerId, for: indexPath) as! MessageView
        header.messageController = self
        return header
    }
   
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        let headerHeight: CGFloat = 10 + 75 + 10 + 75 + 15 +
            360 + 15 + 25 + 8 + 50 + 15 + 70 + 15 + 25 + 8 + 350 + 30
            + 25 + 60
        return CGSize(width: view.frame.width, height: headerHeight)
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
        return cell
    }
    
    @objc func handleSubmit(){
//        if !MFMailComposeViewController.canSendMail() {
//            print("Mail services are not available")
//            return
//        } else {
//            sendEmail()
//        }
        sendEmail()
        
        
    }
    
    func sendEmail() {
        
        let successAlertController = UIAlertController(title: "Success", message: "Your message has been sent to the Student First Center's center. You will receive an email response", preferredStyle: .alert)
        successAlertController.addAction(UIAlertAction(title: "OK", style: .default, handler: { (alert) in
            self.handleDismiss()
        }))
        self.present(successAlertController, animated: true, completion: nil)
        
    }
    
    private func mailComposeController(controller: MFMailComposeViewController,
                               didFinishWithResult result: MFMailComposeResult, error: NSError?) {
        // Check the result or perform other tasks.
        // Dismiss the mail compose view controller.
        controller.dismiss(animated: true, completion: nil)
    }
    
    @objc func handleDismiss(){
        dismiss(animated: true, completion: nil)
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }
}
