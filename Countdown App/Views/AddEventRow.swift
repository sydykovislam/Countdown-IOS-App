//
//  NewCDRow.swift
//  Countdown
//
//  Created by Sydykov Islam on 5/5/21.
//

import SwiftUI

struct AddEventRow: View {
    var viewModel: CountdownManager
    
    @State private var showingSheet = false
    
    var body: some View {
        HStack {
            Text("New Countdown")
                .padding()
                .font(.title)
                .frame(height: 80, alignment: .center)
                
            Spacer()
            
            Button(action: {
                showingSheet.toggle()
            }, label: {
                Image(systemName: "plus")
                    .padding()
                    .background(Color("MintGreen"))
                    .font(.system(size: 50))
                    
            })
            .sheet(isPresented: $showingSheet, content: {
                AddEventSheet(viewModel: viewModel, isPreseted: $showingSheet)
            })
        }
        .background(Color("NavyBlue"))
        .foregroundColor(.white)
    }
    
}

struct NewCDRow_Previews: PreviewProvider {
    static var previews: some View {
        AddEventRow(viewModel: CountdownManager())
    }
}
