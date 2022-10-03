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
            Stopwatch()
                .tabItem {
                    Image(systemName: "house")
                }
           
            Text("statistiken")
                .tabItem{
                    Image(systemName: "chart.bar")
                }
            TrackTimeView()
                .tabItem {
                    Image(systemName: "play.circle")
                }
            Text("urlaub buchen")
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
