//
//  CounterElement.swift
//  Countdown App
//
//  Created by Sydykov Islam on 5/12/21.
//

import SwiftUI

struct CounterElement: View {
    var timeLeft: Int
    var unit: String
    
    var body: some View {
        VStack(spacing: 5) {
            Text("\(timeLeft)")
            Text(unit)
        }
        .padding()
        .font(.system(size: 20, weight: .semibold))
    }
}

struct CounterElement_Previews: PreviewProvider {
    static var previews: some View {
        CounterElement(timeLeft: 87, unit: "day")
    }
}
