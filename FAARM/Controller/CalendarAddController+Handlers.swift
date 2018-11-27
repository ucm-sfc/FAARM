//
//  CalendarAddController+Handlers.swift
//  FAARM
//
//  Created by Christopher Villanueva on 5/9/18.
//  Copyright © 2018 Christopher Villanueva. All rights reserved.
//

import UIKit
import Firebase

extension CalendarAddController {
    
    @objc func handleAddToNotifications() {
        
        let addAlertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        addAlertController.addAction(UIAlertAction(title: "Add to Notifications?", style: .default, handler: { (action) in
            
            if Auth.auth().currentUser == nil {
                self.presentRequiredLogin()
            } else {
                self.handleSave()
                let successAlertController = UIAlertController(title: "Success", message: "This event has been saved to your notifications", preferredStyle: .alert)
                successAlertController.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (alert) in
                    self.handleDismiss()
                }))
                self.present(successAlertController, animated: true, completion: nil)
            }
        }))
        
        addAlertController.addAction(UIAlertAction(title: "Cancel", style: .destructive, handler: nil))
        present(addAlertController, animated: true, completion: nil)
        
        
    }
    
    // This function saves the event into the app's Firebase database
    @objc func handleSave() {
        
        guard let uid = Auth.auth().currentUser?.uid else { return }
        let userNotificationReference = Database.database().reference().child("notifications").child(uid)
        let reference = userNotificationReference.childByAutoId()
        let values = ["description": descriptionTextView.text, "monthAbbrev": monthAbbrev ?? "", "dayNumber": dayNumber ?? "", "dayName": dayName ?? "", "year": year ?? "", "timeInterval": timeInterval!] as [String: Any]
        reference.updateChildValues(values) { (err, ref) in
            
            if let err = err {
                print("Failed to save post to database: ", err)
            }
            print("Successfully saved post to database")
        }
    }
    
    @objc func handleDismiss() {
        dismiss(animated: true, completion: nil)
    }
    
}
