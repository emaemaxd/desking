//
//  TimeOverviewView.swift
//  DeskingSwiftUI
//
//  Created by Ema xd on 06.11.22.
//

import SwiftUI

struct TimeOverviewView: View {
    
    let url = "http://localhost:8080/api/entries/project/1"
    
    var body: some View {
        NavigationView {
        }.navigationBarTitle("hi")
    }
}

struct TimeOverviewView_Previews: PreviewProvider {
    static var previews: some View {
        TimeOverviewView()
    }
}
