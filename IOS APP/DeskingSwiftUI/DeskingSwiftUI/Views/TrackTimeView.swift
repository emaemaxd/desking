//
//  TrackTimeView.swift
//  DeskingSwiftUI
//
//  Created by Ema xd on 25.09.22.
//

import SwiftUI

struct TrackTimeView: View {
//    var mockProjects = ["BillaPLUS App", "HTBLA Leonding Webseite", "Johnny Sins Video", "Desking"]
//    var mockLocation = ["HTBLA Leonding", "Hanusstraße 21", "Johnny Sins Video", "Desking"]
    
    @ObservedObject var projectsModel: ProjectViewModel
    @ObservedObject var locationsModel: LocationViewModel
    @ObservedObject var generalVM: GeneralViewModel
    
    let trackTimeVM = TrackTimeViewModel()
    
    //    var timer = Timer()
    @State var selectedLocation = ""
    @State var pressedRecordTime = false
    @State var showProjectPicker = false
    
    @State var isMarked = false
    
    var body: some View {
        NavigationView{
            VStack(spacing: 50) {
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
                        trackTimeVM.sendTimeEntry(url: generalVM.baseApiUrl + "/entries/addEntry")
                    }
                } label: {
                    if (!projectsModel.projects.isEmpty){
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
                    } else {
                        Image(systemName: "exclamationmark.circle.fill")
                            .resizable()
                            .padding(.vertical, 16.0)
                            .frame(width: 160.0, height: 192.0)
                            .foregroundColor(.secondary)
                    }
                    
                }
                
                VStack{
                    if(projectsModel.projects.isEmpty){
                        HStack{
                            Image(systemName: "wifi.slash")
                                .foregroundColor(.blue)
                            Text("bitte mit dem Internet verbinden...")
                                .foregroundColor(.blue)
                        }
                    }else {
                        Picker("Projekt auswählen", selection: $generalVM.selectedProjectName){
                            ForEach(projectsModel.projects){ item in
                                Text(item.projName).tag(item.projName)
                            }
                        }
                        
                        //                    Picker("Projekt auswählen", selection: $generalVM.selectedProjectName){
                        //                        ForEach(mockProjects, id: \.self){ item in
                        //                            Text(item)
                        //                                .underline(color: .black)
                        //                        }
                        //                    }
                        .padding()
                        .foregroundColor(.blue)
                        .frame(minWidth: 200, idealWidth: 200, maxWidth: 200, minHeight: 40, idealHeight: 40, maxHeight: 40)
                        .foregroundColor(.white)
                        //                    .background(.secondary)
                        .clipShape(Capsule())
                        .overlay(
                            RoundedRectangle(cornerRadius: 7)
                                .stroke(.primary, lineWidth: 1.5)
                        )
                        .padding(.bottom)
                    }
                        
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
                    Spacer()
                }.navigationBarTitle("Zeit erfassen")
            }
        }
    }
    
    struct TrackTimeView_Previews: PreviewProvider {
        static let projectsVM = ProjectViewModel()
        static let locationsVM = LocationViewModel()
        static let generalVM = GeneralViewModel()
        
        static var previews: some View {
            TrackTimeView(projectsModel: projectsVM, locationsModel: locationsVM, generalVM: generalVM)
        }
    }

