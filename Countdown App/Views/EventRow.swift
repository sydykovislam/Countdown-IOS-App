//
//  EventRow.swift
//  Countdown
//
//  Created by Sydykov Islam on 5/5/21.
//

import SwiftUI

struct EventRow: View {
    
    var event: Event
    
    var body: some View {
        HStack {
            Text(event.emoji)
                .font(.system(size: 45))
                .padding()
            
            VStack(alignment: .leading, spacing: 5) {
                Text(event.title)
                    .font(.system(size: 25))
                Text(event.dateString)
            }
            
            
            Spacer()
            
            VStack(spacing: 5) {
                Text("\(event.daysLeft)")
                    .font(.system(size: 30))
                Text("days left")
            }
                .padding()
        }
            .background(Color("Amethyst"))
            .foregroundColor(.white)
            .padding(.bottom, 5)
            
    }
}

struct EventRow_Previews: PreviewProvider {
    static var previews: some View {
        EventRow(event: CountdownManager().events[0])
    }
}
