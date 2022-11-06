//
//  TimeOverviewView.swift
//  DeskingSwiftUI
//
//  Created by Ema xd on 06.11.22.
//

import SwiftUI

struct TimeOverviewView: View {
    struct Ocean: Identifiable, Hashable {
        let name: String
        let id = UUID()
    }
    
    private var oceans = [
        Ocean(name: "Pacific"),
        Ocean(name: "Atlantic"),
        Ocean(name: "Indian"),
        Ocean(name: "Southern"),
        Ocean(name: "Arctic")
    ]
    
    @State private var multiSelection = Set<UUID>()
    
    var body: some View {
        NavigationView {
            List(oceans, selection: $multiSelection) {
                Text($0.name)
            }
            .navigationTitle("Oceans")
            .toolbar { EditButton() }
        }
        Text("\(multiSelection.count) selections")
    }
}

struct TimeOverviewView_Previews: PreviewProvider {
    static var previews: some View {
        TimeOverviewView()
    }
}
