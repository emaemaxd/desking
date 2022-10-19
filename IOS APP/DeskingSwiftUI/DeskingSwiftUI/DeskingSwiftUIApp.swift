//
//  DeskingSwiftUIApp.swift
//  DeskingSwiftUI
//
//  Created by Ema xd on 19.09.22.
//

import SwiftUI

@main
struct DeskingSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
    private func setupDependencies() {
        let apiBaseUrl: String = "http://localhost:8080/api/"
        
        DIContainer.shared.register(type: ApiClient.self, component: DeskingApiClient(baseUrl: apiBaseUrl))
    }
}
