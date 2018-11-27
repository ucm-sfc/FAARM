//
//  HomeController+Handlers.swift
//  FAARM
//
//  Created by Christopher Villanueva on 3/29/18.
//  Copyright © 2018 Christopher Villanueva. All rights reserved.
//

import UIKit
import SafariServices
import Firebase

extension HomeController {
    
    // This displays the proper page depending on which icon
    // was clicked
    func handlePresentController(index: Int){
        switch index {
        case 0:
            handleFinAid()
        case 1:
            handleAdmissions()
        case 2:
            handleRegistrar()
        case 3:
            handleNotifications()
        case 4:
            handleCalendar()
        case 5:
            handleContact()
        default:
            return
        }
    }
    
    
    func handleCheckIn() {
        let checkInLink = SFSafariViewController(url: NSURL(string: "https://ucmerced.tfaforms.net/217854")! as URL)
        self.present(checkInLink, animated: true, completion: nil)
        
    }
    
    func handleNotifications() {
        
        if Auth.auth().currentUser == nil {
            let loginController = LoginController()
            present(loginController, animated: true, completion: nil)
        } else {
            let notificationsController = NotificationsController()
            present(notificationsController, animated: true, completion: nil)
        }
       
    }
    
    func handleCalendar() {
      // let service = OutlookService.shared()
        
        let calendarController = CalendarController()
        present(calendarController, animated: true, completion: nil)
    }
    
    func handleContact() {
        let contactController = ContactController()
        contactController.modalPresentationStyle = .overFullScreen
        contactController.modalTransitionStyle = .crossDissolve
        contactController.homeController = self
        present(contactController, animated: true, completion: nil)
    }
    
    // This functions pulls up the Contact form
    // where the user fills out a form regarding their question
    // and the SFC will receive this information
    func handleMessageForm() {
        let layout = UICollectionViewFlowLayout()
        let messageController = MessageController(collectionViewLayout: layout)
        present(messageController, animated: true, completion: nil)
        
    }
    
    func handleFinAid() {
        let layout = UICollectionViewFlowLayout()
        let finAidController = FinAidController(collectionViewLayout: layout)
        present(finAidController, animated: true, completion: nil)
    }
    
    func handleAdmissions() {
        let layout = UICollectionViewFlowLayout()
        let admissionsController = AdmissionsController(collectionViewLayout: layout)
        present(admissionsController, animated: true, completion: nil)
    }
    
    func handleRegistrar() {
        let layout = UICollectionViewFlowLayout()
        let registrarController = RegistrarController(collectionViewLayout: layout)
        present(registrarController, animated: true, completion: nil)
        
    }

}
