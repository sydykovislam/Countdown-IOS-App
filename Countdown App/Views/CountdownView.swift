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
        NavigationView {
            ZStack {
                List {
                    
                    AddEventRow(viewModel: viewModel)
                        .listRowInsets(EdgeInsets())
                        .padding(.bottom, 5)
                    
                    ForEach(viewModel.events) { event in
                        
                        ZStack {
                            NavigationLink(
                                destination: EventsDetales(event: event),
                                label: {
                                    EmptyView()
                                })
                            EventRow(event: event)
                        }
                        
                            
                        
                    }
                    .onDelete(perform: { indexSet in
                        viewModel.deleteEvent(indexSet: indexSet)
                    })
                    .onMove(perform: { indices, newOffset in
                        viewModel.moveEventRow(indices, newOffset)
                    })
                    .listRowInsets(EdgeInsets())
                }
                .listStyle(PlainListStyle())
                
                
                if viewModel.events.count == 0 {
                    
                    Text("Please add event")
                        .foregroundColor(.gray)
                        .font(.system(size: 25))
                }
            }
            .navigationBarTitle(Text("Countdowns"), displayMode: .inline)            .toolbar(content: {
                EditButton()
            })
            
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
