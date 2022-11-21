import SwiftUI

struct ContentView: View {
   
    @State var selected = 3
    var projectVM: ProjectViewModel
    var timeEntriesVM: TimeEntriesViewModel
    
    var body: some View {
        TabView(selection: $selected) {
            TimeEntriesView()
                .tabItem {
                    Image(systemName: "house")
                }
                .tag(1)
            TimeOverviewView(projectsModel: projectVM, timeEntriesModel: timeEntriesVM)
                .tabItem{
                    Image(systemName: "chart.bar")
                }
                .tag(2)
            TrackTimeView()
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
        
    }
}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
