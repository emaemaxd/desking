//
//  DeskingSwiftUIApp.swift
//  DeskingSwiftUI
//
//  Created by Ema xd on 19.09.22.
//

import SwiftUI

@main
struct DeskingSwiftUIApp: App {
    let loggedUserId = 1
    
    let projectVM = ProjectViewModel()
    let timeEntriesVM = TimeEntriesViewModel()
    
    init() {
        setupDependencies()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView(projectVM: projectVM, timeEntriesVM: timeEntriesVM)
        }
    }
    
    private func setupDependencies() {
        let apiBaseUrl: String = "http://localhost:8080/api/"
        
        /// set projects as environment variable
        projectVM.getData(from: apiBaseUrl + "projects")
        
        timeEntriesVM.getData(from: apiBaseUrl + "entries/\(loggedUserId)")
        
        DIContainer.shared.register(type: ApiClient.self, component: DeskingApiClient(baseUrl: apiBaseUrl))
    }
}
