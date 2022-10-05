//
//  ContentView.swift
//  DeskingSwiftUI
//
//  Created by Ema xd on 19.09.22.
//

import SwiftUI

struct ContentView: View {
   
    @State var selected = 3
    
    var body: some View {
        TabView(selection: $selected) {
            Text("Home Screen")
                .tabItem {
                    Image(systemName: "house")
                }
                .tag(1)
            Text("Statistiken Screen")
                .tabItem{
                    Image(systemName: "chart.bar")
                }
                .tag(2)
            TrackTimeView()
                .tabItem {
                    Image(systemName: "play.circle")
                }
                .tag(3)
            Text("Urlaub buchen Screen")
                .tabItem {
                    Image(systemName: "calendar.badge.clock")
                
                }
                .tag(4)
            SettingsView()
                .tabItem {
                    Image(systemName: "gearshape")
                }
                .tag(5)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
