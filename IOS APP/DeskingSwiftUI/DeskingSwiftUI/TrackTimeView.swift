//
//  TrackTimeView.swift
//  DeskingSwiftUI
//
//  Created by Ema xd on 25.09.22.
//

import SwiftUI

enum Flavor: String, CaseIterable, Identifiable {
    case chocolate, vanilla, strawberry
    var id: Self { self }
}

struct TrackTimeView: View {
    let trackTimeVM = TrackTimeModel()
    
//    var timer = Timer()
    @State var selectedProject = ""
    @State var selectedLocation = ""
    @State var pressedRecordTime = false
    @State var showProjectPicker = false
    
    var mockupProjects = ["Project one", "Desking", "NASA"]
    var mockupLocations = ["HTL Leonding", "Linz HBF", "Shell Tankstelle Leonding"]
    
    
    var body: some View {
        NavigationView{
            VStack(spacing: 30) {
                    
                Spacer()
                
                if pressedRecordTime {
                    Stopwatch()
                } else {
                    HStack(spacing: 1){
                        Text("00")
                            .tracking(1.8)
                        Text(":")
                            .tracking(1)
                        Text("00")
                            .tracking(1.8)
                        Text(":")
                            .tracking(1)
                        Text("00")
                            .tracking(1.8)
                    }
                    .font(.title)
                }
                Button {
                    pressedRecordTime.toggle()
                    print("Button was tapped")
                } label: {
                    if pressedRecordTime {
                        Image(systemName: "stop.circle.fill")
                            .resizable()
                            .padding(.vertical, 16.0)
                            .frame(width: 160.0, height: 192.0)
                            .foregroundColor(.black)
                        
                    } else {
                        Image(systemName: "play.circle.fill")
                            .resizable()
                            .padding(.vertical, 16.0)
                            .frame(width: 160.0, height: 192.0)
                            .foregroundColor(.black)
                    }
                }
                
                VStack{
//                Text("Ausgewähltes Projekt: ")
                    Picker("Projekt auswählen", selection: $selectedProject){
                        ForEach(mockupProjects, id: \.self){ item in
                            Text(item)
                        }
                    }
                    .padding()
                    .frame(width: 200, height: 40)
                    .clipShape(Capsule())
                    .overlay(
                        RoundedRectangle(cornerRadius: 7)
                            .stroke(.primary, lineWidth: 1.5)
                    )
                    .padding(.bottom)
                    
                    Text("Ausgewählter Standort: ")
                        .padding(.top)
                        .font(.title3)
                    Text("vorgeschlagen, von dir entfernt")
                        .font(.subheadline)
                    HStack{
                        Text(Image(systemName: "location.circle.fill"))
                            .foregroundColor(.blue)
                        
                        Picker("Standort auswählen", selection: $selectedLocation){
                            ForEach(mockupLocations, id: \.self){ item in
                                Text(item)
                            }
                        }
                    }
                }
                Spacer()
            }.navigationBarTitle("Zeit erfassen")
        }
    }
}

struct TrackTimeView_Previews: PreviewProvider {
    static var previews: some View {
        TrackTimeView()
    }
}

func addItem(){
    print("ajsidfj")
}

