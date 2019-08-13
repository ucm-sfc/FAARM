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
    
    // This function saves the subscription into the app's Firebase database
    @objc func handleSave() {
        
        if (CheckInternet.Connection()) {
            let prefs = UserDefaults.standard
            var eventsArray = prefs.object(forKey: "subbedEvents") as? [String] ?? [String]()
           
            let string = descriptionTextView.text.uppercased().filter("ABCDEFGHIJKLKMNOPQRSTUVWXYZ1234567890 ".contains).replacingOccurrences(of: " ", with: "_", options: .literal, range: nil)
                
            Messaging.messaging().subscribe(toTopic: string)
            print("User is now subbed to: " + string)
                
            eventsArray.append(string)
            prefs.set(eventsArray, forKey: "subbedEvents")
            
            
            let successAlertController = UIAlertController(title: "Added!", message: "This event has been saved to your notifications.", preferredStyle: .alert)
            successAlertController.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (alert) in
                let cell = self.calendarController?.tableView.cellForRow(at: self.indexPath!) as! CalendarCell
                
                cell.titleLabel.textColor = UIColor(red:1.00, green:0.90, blue:0.32, alpha:1.0)
                
                self.handleDismiss()
            }))
            self.present(successAlertController, animated: true, completion: nil)
        }
        else {
            let successAlertController = UIAlertController(title: "Oops...", message: "A network error occurred.", preferredStyle: .alert)
            successAlertController.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (alert) in
                self.handleDismiss()
            }))
            self.present(successAlertController, animated: true, completion: nil)
        }
        
    }
    
    // This function deletes the subscription from the app's Firebase database
    @objc func handleDelete() {

        if(CheckInternet.Connection()) {
            
            let string = descriptionTextView.text.uppercased().filter("ABCDEFGHIJKLKMNOPQRSTUVWXYZ1234567890 ".contains).replacingOccurrences(of: " ", with: "_", options: .literal, range: nil)
            
            Messaging.messaging().unsubscribe(fromTopic: string)
            print("User is now unsubbed from: " + string)
            
            let prefs = UserDefaults.standard
            var eventsArray = prefs.object(forKey: "subbedEvents") as? [String] ?? [String]()
            
            for i in 0 ..< eventsArray.count{
                if (eventsArray[i] == string){
                    eventsArray.remove(at: i)
                    break
                }
            }
            
            prefs.set(eventsArray, forKey: "subbedEvents")
            
            let successAlertController = UIAlertController(title: "Deleted!", message: "This event has been deleted from your notifications.", preferredStyle: .alert)
            successAlertController.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (alert) in
                
                let cell = self.calendarController?.tableView.cellForRow(at: self.indexPath!) as! CalendarCell
                
                cell.titleLabel.textColor = UIColor.white
                
                self.handleDismiss()
            }))
            self.present(successAlertController, animated: true, completion: nil)
            
        } else {
            let successAlertController = UIAlertController(title: "Oops...", message: "An error occurred.", preferredStyle: .alert)
            successAlertController.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (alert) in
                self.handleDismiss()
            }))
            self.present(successAlertController, animated: true, completion: nil)
        }
    }
    
    @objc func handleDismiss() {
        dismiss(animated: true, completion: nil)
    }
    
}
