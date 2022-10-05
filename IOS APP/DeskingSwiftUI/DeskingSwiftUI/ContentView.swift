//
//  ContentView.swift
//  DeskingSwiftUI
//
//  Created by Ema xd on 19.09.22.
//

import SwiftUI

struct ContentView: View {
   
    var body: some View {
        TabView {
            Text("Home Screen")
                .tabItem {
                    Image(systemName: "house")
                }
           
            Text("Statistiken Screen")
                .tabItem{
                    Image(systemName: "chart.bar")
                }
            TrackTimeView()
                .tabItem {
                    Image(systemName: "play.circle")
                }
            Text("Urlaub buchen Screen")
                .tabItem {
                    Image(systemName: "calendar.badge.clock")
                
                }
            SettingsView()
                .tabItem {
                    Image(systemName: "gearshape")
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
