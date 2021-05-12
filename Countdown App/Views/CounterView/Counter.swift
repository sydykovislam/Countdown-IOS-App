//
//  Counter.swift
//  Countdown App
//
//  Created by Sydykov Islam on 5/12/21.
//

import SwiftUI

struct Counter: View {
    
    var event: Event
    
    var body: some View {
        
        HStack {
            CounterElement(timeLeft: event.diffs.month!, unit: "month")
            CounterElement(timeLeft: event.diffs.day!, unit: "day")
            CounterElement(timeLeft: event.diffs.hour!, unit: "hour")
            CounterElement(timeLeft: event.diffs.second!, unit: "second")
        }
        .padding(.horizontal, 10)
        .background(Color.purple)
        .cornerRadius(7)
        .foregroundColor(.white)
    }
}


struct Counter_Previews: PreviewProvider {
    static var previews: some View {
        var countdownManager = CountdownManager()
        Counter(event: countdownManager.events[0])
    }
}
