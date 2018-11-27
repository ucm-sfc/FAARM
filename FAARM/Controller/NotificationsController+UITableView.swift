//
//  NotificationsController+UITableView.swift
//  FAARM
//
//  Created by Christopher Villanueva on 5/9/18.
//  Copyright © 2018 Christopher Villanueva. All rights reserved.
//
import UIKit

extension NotificationsController {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let notificationsDeleteController = NotificationsDeleteController()
        notificationsDeleteController.modalPresentationStyle = .overFullScreen
        notificationsDeleteController.modalTransitionStyle = .crossDissolve
        notificationsDeleteController.savedCalendarEvent = savedCalendarEvents[indexPath.item]
        notificationsDeleteController.notificationsController = self
        notificationsDeleteController.indexPath = indexPath
        present(notificationsDeleteController, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! CalendarCell
        cell.savedCalendarEvent = savedCalendarEvents[indexPath.item]
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return savedCalendarEvents.count
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = IndentedLabel()
        //label.text = "Upcoming Deadlines"
        label.backgroundColor = .ucmGold
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let label = UILabel()
        label.text = "No events saved"
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 22)
        return label
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return savedCalendarEvents.count == 0 ? 150 : 0
    }
    
    
}
