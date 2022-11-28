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
    @ObservedObject var projectsModel: ProjectViewModel
    @ObservedObject var locationsModel: LocationViewModel
    
    let trackTimeVM = TrackTimeViewModel()
    
//    var timer = Timer()
    @State var selectedProject = "Desking"
    @State var selectedLocation = ""
    @State var pressedRecordTime = false
    @State var showProjectPicker = false
    
    @State var isMarked = false
    
    var body: some View {
        NavigationView{
            VStack(spacing: 30) {
                Spacer()
                if pressedRecordTime {
                    Stopwatch()
                } else {
                    // default showing
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
                    if (!pressedRecordTime){
//                        trackTimeVM.sendPostRequest(to: URL(from: "http://localhost:8080/api/entries/addEntry"), body: TimeEntryModel.TimeEntryForPost, then: <#T##(Result<Data, Error>) -> Void#>)
//                        trackTimeVM.postData(from: "http://localhost:8080/api/entries/addEntry")
                    }
                } label: {
                    if pressedRecordTime {
                        Image(systemName: "stop.circle.fill")
                            .resizable()
                            .padding(.vertical, 16.0)
                            .frame(width: 160.0, height: 192.0)
                            .foregroundColor(.primary)
                    } else {
                        Image(systemName: "play.circle.fill")
                            .resizable()
                            .padding(.vertical, 16.0)
                            .frame(width: 160.0, height: 192.0)
                            .foregroundColor(.primary)
                    }
                }
                
                VStack{
                    Picker("Projekt auswählen", selection: $selectedProject){
                        ForEach(projectsModel.projects){ item in
                            Text(item.projName).tag(item.projName)
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
                    
                    // added condition if no locations available
                    if(!locationsModel.locationsForUser.isEmpty){
                        VStack{
                            Text("Ausgewählter Standort: ")
                                .padding(.top)
                                .font(.title3)
                            Text("vorgeschlagen, von dir entfernt")
                                .font(.subheadline)
                            HStack{
                                Button{
                                    isMarked.toggle()
                                } label: {
                                    Image(systemName: self.isMarked ? "largecircle.fill.circle" : "circle")
                                        .clipShape(Circle())
                                        .foregroundColor(.blue)
                                }
                                
                                Text(Image(systemName: "location.circle.fill"))
                                    .foregroundColor(.blue)
                                
                                // LOCATION auswählen
                                Picker("Standort auswählen", selection: $selectedLocation){
                                    ForEach(locationsModel.locationsForUser){ item in
                                        Text(item.name)
                                    }
                                }
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
    static let projectsVM = ProjectViewModel()
    static let locationsVM = LocationViewModel()
    
    static var previews: some View {
        TrackTimeView(projectsModel: projectsVM, locationsModel: locationsVM)
    }
}
