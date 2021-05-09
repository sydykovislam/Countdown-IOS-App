//
//  ContentView.swift
//  Countdown App
//
//  Created by Sydykov Islam on 5/8/21.
//

import SwiftUI

struct CountdownView: View {
    
    @ObservedObject var viewModel: CountdownManager
    
    var body: some View {
        ZStack {
            List {
                    
                    AddEventRow(viewModel: viewModel)
                        .listRowInsets(EdgeInsets())
                        .padding(.bottom, 5)
                    
                    ForEach(viewModel.events) { event in
                        EventRow(event: event)
                    }
                        .listRowInsets(EdgeInsets())
                        .padding(.bottom, 5)
            }
            
            if viewModel.events.count == 0 {
                
                Text("Please add event")
                    .foregroundColor(.gray)
                    .font(.system(size: 25))
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            CountdownView(viewModel: CountdownManager())
                .previewDisplayName("usual state")
            CountdownView(viewModel: CountdownManager.getEmptyEvents())
                .previewDisplayName("empty state")
        }
        
        
    }
}
