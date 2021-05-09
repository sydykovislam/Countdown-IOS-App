//
//  NewCDSheet.swift
//  Countdown
//
//  Created by Sydykov Islam on 5/5/21.
//

import SwiftUI

struct AddEventSheet: View {
    
    var viewModel: CountdownManager
    
    @State var title: String = ""
    @State var icon: String = ""
    @State var daysLeft :String = ""
    
    @State private var date = Date()
    
    @Binding var isPreseted: Bool
    
    var body: some View {
        VStack(spacing: 18) {
            
            Text("Set New Countdown")
                .font(.largeTitle)
                .foregroundColor(.white)
            
            FormTextField(text: $title, placeholder: "Title")
            FormTextField(text: $icon, placeholder: "Emoji")
            FormTextField(text: $daysLeft, placeholder: "Days Left")
     
                
            DatePicker(
                   "Date of the event",
                   selection: $date,
                   displayedComponents: [.date]
               )
            .padding()
            .font(.system(size: 25))
            .background(Color.white)
            .cornerRadius(5)
               
            
            Button(action: {
                viewModel.addEvent(event: Event(title: title, emoji: icon, daysLeft: Int(daysLeft) ?? 0, date: date))
                isPreseted = false
                
            }, label: {
                Text("Add Countdown")
            })
            .padding()
            .background(Color("Amethyst"))
            .foregroundColor(.white)
            .font(.system(size: 25))
            .cornerRadius(17)
            
            
            Spacer()
            
        }
        .padding()
        .padding(.top, 40)
        .background(Color("NavyBlue"))
        .ignoresSafeArea()
        //.textFieldStyle(RoundedBorderTextFieldStyle())
    }
    
}

struct FormTextField: View {
    
    @Binding var text :String
    var placeholder: String
    
    var body: some View {
        TextField(
            placeholder,
            text: $text)
            .padding()
            .background(Color.white)
            .font(.system(size: 30))
            .cornerRadius(5)
            .foregroundColor(.black)
    }
}

struct NewCDSheet_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = CountdownManager()
        AddEventSheet(viewModel: viewModel, isPreseted: .constant(true))
    }
}

