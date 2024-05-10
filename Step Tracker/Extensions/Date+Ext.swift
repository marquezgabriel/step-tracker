//
//  Date+Ext.swift
//  Step Tracker
//
//  Created by Gabriel Marquez on 2024-05-10.
//

import Foundation

extension Date {
    var weekdayInt: Int {
        Calendar.current.component(.weekday, from: self)
    }
}
