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
    
    // This displays the proper page depending on which icon was clicked
    func handlePresentController(index: Int){
        switch index {
        case 0:
            handleFinAid()
        case 1:
            handleVideos()
        case 2:
            handleRegistrar()
        case 3:
            handleMaps()
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
    
    func handleMaps() {
        let maps = SFSafariViewController(url: NSURL(string: "https://www.ucmerced.edu/maps")! as URL)
        self.present(maps, animated: true, completion: nil)
    }
    
    func handleCalendar() {
        
        if(CheckInternet.Connection()){
            let calendarController = CalendarController()
            present(calendarController, animated: true, completion: nil)
        }
        else{
            let successAlertController = UIAlertController(title: "Connect to Wi-Fi", message: "Please connect your device to your\nWi-Fi network to view the calendar.", preferredStyle: .alert)
            successAlertController.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (alert) in }))
            self.present(successAlertController, animated: true, completion: nil)
        }
        
    }
    
    func handleContact() {
        let contactController = ContactController()
        contactController.modalPresentationStyle = .overFullScreen
        contactController.modalTransitionStyle = .crossDissolve
        contactController.homeController = self
        present(contactController, animated: true, completion: nil)
    }
    
    /* handleMessageForm()
     This function pulls up the Contact form
     where the user fills out a form regarding their question
     and the SFC will receive this information.
    
    
    func handleMessageForm() {
        let layout = UICollectionViewFlowLayout()
        let messageController = MessageController(collectionViewLayout: layout)
        present(messageController, animated: true, completion: nil)
    }
    */
    
    func handleMeetStaff() {
        let meetStaff = SFSafariViewController(url: NSURL(string: "https://studentsfirst.ucmerced.edu/staff")! as URL)
        self.present(meetStaff, animated: true, completion: nil)
    }
    
    func handleFinAid() {
        let layout = UICollectionViewFlowLayout()
        let finAidController = FinAidController(collectionViewLayout: layout)
        present(finAidController, animated: true, completion: nil)
    }
    
    func handleVideos() {
        let layout = UICollectionViewFlowLayout()
        let videosController = VideosController(collectionViewLayout: layout)
        present(videosController, animated: true, completion: nil)
    }
    
    func handleRegistrar() {
        let layout = UICollectionViewFlowLayout()
        let registrarController = RegistrarController(collectionViewLayout: layout)
        present(registrarController, animated: true, completion: nil)
    }

}
