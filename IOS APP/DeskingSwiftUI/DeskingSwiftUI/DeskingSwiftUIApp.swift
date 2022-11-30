import SwiftUI

@main
struct DeskingSwiftUIApp: App {
    let loggedUserId = 1
    
    let projectVM = ProjectViewModel()
    let timeEntriesVM = TimeEntriesViewModel()
    let locationsVM = LocationViewModel()
    
    init() {
        setupDependencies()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView(projectVM: projectVM, timeEntriesVM: timeEntriesVM, locationVM: locationsVM)
        }
    }
    
    private func setupDependencies() {
        let apiBaseUrl: String = "http://localhost:8080/api/"
        
        /// set projects as environment variable
        projectVM.getData(from: apiBaseUrl + "projects/user/\(loggedUserId)")
        
        timeEntriesVM.getData(from: apiBaseUrl + "entries")
        
//        DIContainer.shared.register(type: ApiClient.self, component: DeskingApiClient(baseUrl: apiBaseUrl))
    }
}
