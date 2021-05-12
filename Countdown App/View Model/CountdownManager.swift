//
//  CountdownManager.swift
//  Countdown App
//
//  Created by Sydykov Islam on 5/8/21.
//

import Foundation

class CountdownManager: ObservableObject {
    
    @Published var events = [
        
        Event(title: "My Birthday", emoji: "🎂", date: Date()),
        Event(title: "Uni Graduation", emoji: "🎓", date: Date()),
        Event(title: "Ramadan", emoji: "🌙", date: Date())
        
    ]
    
    func addEvent(event: Event) {
        events.append(event)
        print(event.diffs)
    }
    
    func deleteEvent(indexSet: IndexSet) {
        for index in indexSet {
            events.remove(at: index)
        }
    }
    
    func moveEventRow(_ indices: IndexSet, _ newOffset: Int) {
        events.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    static func getEmptyEvents() -> CountdownManager {
        
        var countdownManager = CountdownManager()
        countdownManager.events = []
        
        return countdownManager
    }
    
    
}
