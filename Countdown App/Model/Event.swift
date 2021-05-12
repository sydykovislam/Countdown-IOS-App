//
//  Model.swift
//  Countdown App
//
//  Created by Sydykov Islam on 5/8/21.
//

import Foundation

struct Event: Identifiable {
    
    var id = UUID()
    var title: String
    var emoji: String
    var date: Date
    
    var currentDate: Date {
        Date()
    }
    
    var daysLeft: Int {
        Calendar.current.dateComponents([.day], from: currentDate, to: date).day!
    }
    
    var diffs: DateComponents {
        Calendar.current.dateComponents([.month, .day, .hour, .minute, .second], from: currentDate, to: date)
    }
    
    let formatter = DateFormatter()
    
    var dateString: String {
        formatter.dateFormat = "E, d MMM y"
        return formatter.string(from: date)
    }
}
    
    
    
