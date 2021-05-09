//
//  Countdown_AppApp.swift
//  Countdown App
//
//  Created by Sydykov Islam on 5/8/21.
//

import SwiftUI

@main
struct Countdown_AppApp: App {
    
    @StateObject var countdownManager = CountdownManager()
    
    var body: some Scene {
        WindowGroup {
            CountdownView(viewModel: countdownManager)
        }
    }
}
