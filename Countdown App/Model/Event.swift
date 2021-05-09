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
    var daysLeft: Int
    var date: Date
    
    let formatter = DateFormatter()
    
    var dateString: String {
        formatter.dateFormat = "E, d MMM y"
        return formatter.string(from: date)
    }
}
    
    
    
