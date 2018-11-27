//
//  CalendarEvent.swift
//  FAARM
//
//  Created by Christopher Villanueva on 4/10/18.
//  Copyright © 2018 Christopher Villanueva. All rights reserved.
//

import UIKit

/* class CalendarEvent:
 * This class serves as a model for our calendar entries
 * As we grab the data from our database, we create
 * instances of this class and fill them into an array
 * so they can fill our table view later
 */

struct CalendarEvent {
    
    var name: String?
    var dayNumber: String?
    var dayName: String?
    var monthAbbrev: String?
    var monthNum: String?
    var year: String?
    var description: String?
    var timeInterval: Int?
    
    init() {
        self.name = ""
        self.monthAbbrev = ""
        self.dayNumber = ""
        self.dayName = ""
        self.year = ""
        self.timeInterval = -1
    }
    
    init(dictionary: [String: Any]) {
        self.name = dictionary["description"] as? String ?? ""
        self.monthAbbrev = dictionary["monthAbbrev"] as? String ?? ""
        self.dayNumber = dictionary["dayNumber"] as? String ?? ""
        self.dayName = dictionary["dayName"] as? String ?? ""
        self.year = dictionary["year"] as? String ?? ""
        self.timeInterval = dictionary["timeInterval"] as? Int ?? -1
    }

}
