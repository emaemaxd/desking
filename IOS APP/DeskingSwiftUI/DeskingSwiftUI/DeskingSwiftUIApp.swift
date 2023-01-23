import SwiftUI

@main
struct DeskingSwiftUIApp: App {
    let loggedUserId = 1
    
    let projectVM = ProjectViewModel()
    let timeEntriesVM = TimeEntriesViewModel()
    let locationsVM = LocationViewModel()
    let generalVM = GeneralViewModel()
    let login = LoginModel()
    
    init() {
        setupDependencies()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView(projectVM: projectVM, timeEntriesVM: timeEntriesVM, locationVM: locationsVM, loginModel: login, generalVM: generalVM)
        }
    }
    
    private func setupDependencies() {
        
        /// set projects as environment variable
        projectVM.getData(from: generalVM.baseApiUrl + "projects/user/\(login.userId)")
        
        timeEntriesVM.getData(from: generalVM.baseApiUrl + "entries")
        
//        DIContainer.shared.register(type: ApiClient.self, component: DeskingApiClient(baseUrl: apiBaseUrl))
    }
}
