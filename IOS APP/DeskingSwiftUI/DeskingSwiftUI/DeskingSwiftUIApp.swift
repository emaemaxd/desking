//
//  DeskingSwiftUIApp.swift
//  DeskingSwiftUI
//
//  Created by Ema xd on 19.09.22.
//

import SwiftUI

@main
struct DeskingSwiftUIApp: App {
    let projectVM = ProjectViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView(projectVM: projectVM)
        }
    }
    
    private func setupDependencies() {
        let apiBaseUrl: String = "http://localhost:8080/api/"
        
        // TODO: projectVM.getData
        
        DIContainer.shared.register(type: ApiClient.self, component: DeskingApiClient(baseUrl: apiBaseUrl))
    }
}
