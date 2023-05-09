//
//  AirplaneTicketingApp.swift
//  AirplaneTicketing
//
//  Created by Derefaa Cline on 5/8/23.
//

import SwiftUI

@main
struct AirplaneTicketingApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear(perform: UIApplication.shared.addTapGestureRecognizer)
        }
    }
}
