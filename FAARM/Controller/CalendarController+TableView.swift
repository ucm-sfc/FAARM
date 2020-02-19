//
//  CalendarController+TableView.swift
//  FAARM
//
//  Created by Christopher Villanueva on 4/18/18.
//  Copyright © 2018 Christopher Villanueva. All rights reserved.
//

import UIKit

extension CalendarController {
    
    /* This function gets called when a cell gets clicked on
     * We want to display the details for this cell and options
     * to add it to our database, and indicate that the cell we
     * selected is inside our notifications
     */
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let calendarAddController = CalendarAddController()
        calendarAddController.modalPresentationStyle = .overFullScreen
        calendarAddController.modalTransitionStyle = .crossDissolve
        calendarAddController.calendarController = self
        calendarAddController.calendarEvent = calendarEvents[indexPath.item]
        calendarAddController.indexPath = indexPath
        tableView.deselectRow(at: indexPath, animated: true)
        present(calendarAddController, animated: true, completion: nil)
    }
    
    /* This function specifies the height of each cell
     * About 11% of the entire phone screen height
     */
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return view.frame.height * 0.11
    }
    
    /* This sets which calendar event will be put in each cell
     * which is done by using the indexPath value. Also changes
     * text color of cells only if the event is inside our notifications.
     */
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! CalendarCell
        
        if (indexPath.item < calendarEvents.count) {
            cell.calendarEvent = calendarEvents[indexPath.item]
        }
        
        let prefs = UserDefaults.standard
        let eventsArray = prefs.object(forKey: "subbedEvents") as? [String] ?? [String]()
        
        if (!eventsArray.isEmpty && eventsArray.contains((cell.calendarEvent?.id!)!)) {
            cell.titleLabel.textColor = UIColor(red:1.00, green:0.90, blue:0.32, alpha:1.0)
        }
        else{
            cell.titleLabel.textColor = UIColor.white
        }
        
        return cell
    }
    
    // This only needs to be one
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // Number of cells = number of events
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return calendarEvents.count
    }
    
    // Create the header for the section
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = IndentedLabel()
        label.backgroundColor = .ucmGold
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }
    
    /* This function and the heightForFooter function
     * work together to display a text if there are no calendar events
     * So that its not just a blank view
     */
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let label = UILabel()
        label.text = "Loading events..."
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 22)
        
        let model = UIDevice.current.model
        
        if (model != "iPhone" && model != "iPod"){
            label.font = UIFont.boldSystemFont(ofSize: 28)
        }
        
        return label
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return calendarEvents.count == 0 ? 150 : 0
    }
    
}
