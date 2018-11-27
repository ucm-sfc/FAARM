//
//  NotificationsDeleteController+Handlers.swift
//  FAARM
//
//  Created by Christopher Villanueva on 5/9/18.
//  Copyright © 2018 Christopher Villanueva. All rights reserved.
//

import UIKit
import Firebase

extension NotificationsDeleteController {
    
    @objc func handleDeleteFromNotifications() {
        
        let deleteAlertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        deleteAlertController.addAction(UIAlertAction(title: "Remove from Notifications?", style: .default, handler: { (action) in
            
            if let indexPath = self.indexPath {
                self.notificationsController?.handleDeleteSavedEvent(indexPath: indexPath)
            }
            let successAlertController = UIAlertController(title: "Success", message: "This event has been removed from your notifications", preferredStyle: .alert)
            successAlertController.addAction(UIAlertAction(title: "OK", style: .default, handler: { (alert) in
                self.handleDismiss()
            }))
            self.present(successAlertController, animated: true, completion: nil)
        }))
        deleteAlertController.addAction(UIAlertAction(title: "Cancel", style: .destructive, handler: nil))
        present(deleteAlertController, animated: true, completion: nil)
    }
    
    
    
    @objc func handleDismiss() {
        
        dismiss(animated: true, completion: nil)
    }
}
