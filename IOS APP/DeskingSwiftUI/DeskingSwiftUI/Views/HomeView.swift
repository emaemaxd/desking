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
            TimeEntriesView(generalVM: generalVM, projectsModel: projectVM, timeEntriesModel: timeEntriesVM)
                .tabItem {
                    Image(systemName: "house")
                }
                .tag(1)
                .onChange(of: selected){ value in
                    if value == 1{
                        timeEntriesVM.getData(from: generalVM.baseApiUrl + "entries")
                    }
                }
            TimeOverviewView(projectsModel: projectVM, timeEntriesModel: timeEntriesVM, generalVM: generalVM, loginModel: loginModel)
                .tabItem{
                    Image(systemName: "chart.bar")
                }
                .tag(2)
                .onChange(of: selected){ value in
                    if value == 2{
                        timeEntriesVM.getData(from: generalVM.baseApiUrl + "entries")
                    }
                }
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
