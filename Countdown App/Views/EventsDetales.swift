//
//  EventsDetales.swift
//  Countdown App
//
//  Created by Sydykov Islam on 5/11/21.
//

import SwiftUI

struct EventsDetales: View {
    
    var event: Event
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Circle()
                .foregroundColor(Color.purple)
                .frame(height: 230)
                .overlay(
                    Text(event.emoji)
                        .font(.system(size: 110))
                )
            
            Text(event.title)
                .font(.system(size: 35, weight: .semibold))
                
            Text(event.dateString)
                .font(.system(size: 20))
                .padding(2)
            
            Spacer()
            Spacer()
        }
        .background(Color("Amethyst"))
        .ignoresSafeArea(.all)
        .foregroundColor(.white)
    }
}

struct EventsDetales_Previews: PreviewProvider {
    static var previews: some View {
        
        var countdownManager = CountdownManager()
        EventsDetales(event: countdownManager.events[0])
    }
}
