//
//  CalendarController+getJSON.swift
//  FAARM
//
//  Created by Christopher Villanueva on 4/16/18.
//  Copyright © 2018 Christopher Villanueva. All rights reserved.
//

import UIKit

extension CalendarController {
    
    /* fetchCalendarEvents:
     * This function fetches JSON data from the calendar
     * being used by the SFC by making a URL request and
     * parsing the response we get in return. We them store
     * the appropriate response data into an instance of
     * CalendarEvent, and then store to our array
     */
    func fetchCalendarEvents() {
        
        // Create an active URL session using our known URL String
        guard let url = URL(string: calendarUrl) else { return }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            // Check for an errpr
            if let error = error {
                print(error)
                return
            }
            
            /* Parse the JSON given from the data we receive from our URL request
            * We will do this by first getting the json and getting the "items" section
            * Then for each item, we create a dictionary where we get the values
            * for our calendar entries
            */
            if let json = try? JSONSerialization.jsonObject(with: data!, options: .allowFragments) as? NSDictionary {
                
                // Grab the items array
                if let itemsArray = json?.object(forKey: "items") as? NSArray {
                    
                    /* Create dictionary for each of our items
                     * and create instance of CalendarEvent with the proper info
                     */
                    for item in itemsArray {
                        if let itemDict = item as? NSDictionary {
                            
                            var calendarEvent = CalendarEvent()
                            
                            let name = itemDict.value(forKey: "summary") as? String
                            let description = itemDict.value(forKey: "description") as? String
                            
                            // Set the values of our new CalendarEvent object
                            // to the parsed data we get from our JSON
                            calendarEvent.name = name
                            calendarEvent.description = description
                            
                            // This allows us to get the date of the event
                            if let startDict = itemDict.value(forKey: "start") as? NSDictionary{
                                
                                // formatDateObj is a function within Extensions.swift
                                let dateArray = self.formatDateObj(startDict: startDict, dateFormatter: self.dateFormatter)
                                
                                calendarEvent.monthAbbrev = dateArray[0]
                                calendarEvent.monthNum = dateArray[1]
                                calendarEvent.dayNumber = dateArray[2]
                                calendarEvent.dayName = dateArray[3]
                                calendarEvent.year = dateArray[4]
                                
                                let timeInterval = self.getTimeIntervalValue(calendarEvent: calendarEvent)
                                calendarEvent.timeInterval = timeInterval
                                
                                self.calendarEvents.append(calendarEvent)
                                
                                // Sort the calendar events by date
                                self.calendarEvents.sort(by: { (ce1, ce2) -> Bool in
                                    guard let timeOne = ce1.timeInterval else { return false }
                                    guard let timeTwo = ce2.timeInterval else { return false }
                                    return timeOne < timeTwo
                                })
                            }
                        }
                    }
                }
                /* Get off the main thread and reload tableView
                 * This is so the table can refresh but not
                 * freeze the UI (reloading and UI would be on different threads)
                 */
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
            }.resume()
    }
    
    /* getTimeIntervalValue:
     * Given the date information (strings) in the CalendarEvent passed
     * in as a parameter, we convert it into a pure Integer so that we
     * can sort our events chronologically
     */
    private func getTimeIntervalValue(calendarEvent: CalendarEvent) -> Int {
        
        // Convert from type Any to String
        guard let firstDayString = calendarEvent.dayNumber else { return -1 }
        guard let firstMonthString = calendarEvent.monthNum else { return -1 }
        guard let firstYearString = calendarEvent.year else { return -1}
        
        // Convert from type String to Int
        guard let firstDay = Int(firstDayString) else { return -1 }
        guard let firstMonth = Int(firstMonthString) else { return -1}
        guard let firstYear = Int(firstYearString) else { return -1}
        let firstNum = firstYear * 365 + firstMonth * 30 + firstDay
        
        return firstNum
    }
}


