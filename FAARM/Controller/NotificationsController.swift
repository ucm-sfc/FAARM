//
//  NotificationsController.swift
//  FAARM
//
//  Created by Christopher Villanueva on 4/24/18.
//  Copyright © 2018 Christopher Villanueva. All rights reserved.
//

import UIKit
import CoreData
import Firebase

class NotificationsController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let cellId = "cellId"
    let tableView: UITableView = {
        let tv = UITableView(frame: .zero)
        tv.backgroundColor = .ucmBlue
        return tv
    }()
    
    lazy var returnButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "back_arrow").withRenderingMode(.alwaysTemplate), for: .normal)
        button.addTarget(self, action: #selector(handleDismiss), for: .touchUpInside)
        button.tintColor = .white
        button.backgroundColor = .ucmBlue
        return button
    }()
    
    lazy var profileButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "usericon").withRenderingMode(.alwaysTemplate), for: .normal)
        button.addTarget(self, action: #selector(handleLogout), for: .touchUpInside)
        button.tintColor = .white
        button.backgroundColor = .ucmBlue
        return button
    }()
    
    let headerLabel: UILabel = {
        let label = UILabel()
        label.text = "Saved Events"
        label.font = UIFont.boldSystemFont(ofSize: 28)
        label.textColor = .white
        label.backgroundColor = .ucmBlue
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    var savedCalendarEvents = [CalendarEvent]()
    
    override func viewDidLoad() {
        view.backgroundColor = .ucmBlue
        
        setupUI()
        fetchSavedEvents()
    }
    
    @objc func handleLogout(){
        
        let alertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        alertController.addAction(UIAlertAction(title: "Log Out" , style: .destructive, handler: { (_) in
            
            do {
                try  Auth.auth().signOut()
                self.dismiss(animated: true, completion: nil)
//                let loginController = LoginController()
//                let navigationController = UINavigationController(rootViewController: loginController)
//                self.present(navigationController, animated: true, completion: nil)
                
            } catch let error {
                print("Failed to sign out: ", error)
            }
        }))
        alertController.addAction(UIAlertAction(title: "Cancel" , style: .cancel, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
    
    // This function fetches the events that have been added to the users
    // notifications and displays them on the tableView
    func fetchSavedEvents() {
        
        guard let uid = Auth.auth().currentUser?.uid else { return }
        let reference = Database.database().reference().child("notifications").child(uid)
        reference.queryOrdered(byChild: "timeInterval").observe(.childAdded, with: { (snapshot) in
            
            guard let dictionary = snapshot.value as? [String: Any] else { return }
            let savedCalendarEvent = CalendarEvent(dictionary: dictionary)
            self.savedCalendarEvents.append(savedCalendarEvent)
            
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
            
        }) { (err) in
            print("Failed to fetch ordered posts: ", err)
        }
    }
    
   
    
    @objc func handleDeleteSavedEvent(indexPath: IndexPath){
        
        guard let uid = Auth.auth().currentUser?.uid else { return }
        let delete_key = savedCalendarEvents[indexPath.item].timeInterval
        let userNotificationReference = Database.database().reference().child("notifications").child(uid)
        let query = userNotificationReference.queryOrdered(byChild: "timeInterval").queryEqual(toValue: delete_key)
        query.observe(.childAdded) { (snapshot) in
            snapshot.ref.removeValue()
        }
        self.savedCalendarEvents.remove(at: indexPath.row)
        self.tableView.deleteRows(at: [indexPath], with: .automatic)
    }
    
    @objc func handleDismiss() {
        dismiss(animated: true, completion: nil)
    }
    

    
}
