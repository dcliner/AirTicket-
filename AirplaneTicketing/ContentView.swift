//
//  ContentView.swift
//  AirplaneTicketing
//
//  Created by Derefaa Cline on 5/8/23.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("wasOpened")var wasOpened = false
    
    var body: some View {
        if !wasOpened{
            GetStartedView()
        }else{
            FlightsView()
                .tabItem {
                    Label("home", systemImage: "airplane.circle.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
