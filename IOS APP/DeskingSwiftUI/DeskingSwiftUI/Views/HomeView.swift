import SwiftUI

struct ContentView: View {
   
    @State var selected = 3
    var projectVM: ProjectViewModel
    var timeEntriesVM: TimeEntriesViewModel
    var locationVM: LocationViewModel
    var loginModel: LoginModel
    var generalVM: GeneralViewModel
    
    var body: some View {
        TabView(selection: $selected) {
            TimeEntriesView()
                .tabItem {
                    Image(systemName: "house")
                }
                .tag(1)
            TimeOverviewView(projectsModel: projectVM, timeEntriesModel: timeEntriesVM, generalVM: generalVM, loginModel: loginModel)
                .tabItem{
                    Image(systemName: "chart.bar")
                }
                .tag(2)
            TrackTimeView(projectsModel: projectVM, locationsModel: locationVM, generalVM: generalVM)
                .tabItem {
                    Image(systemName: "play.circle")
                }
                .tag(3)
            VacationView()
                .tabItem {
                    Image(systemName: "calendar.badge.clock")
                }
                .tag(4)
            SettingsView()
                .tabItem {
                    Image(systemName: "gearshape")
                }
                .tag(5)
        }
        .toolbar(.visible)
    }
}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
