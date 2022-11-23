import SwiftUI

struct TimeOverviewView: View {
    
    @ObservedObject var projectsModel: ProjectViewModel
    @ObservedObject var timeEntriesModel: TimeEntriesViewModel
    @State var selectedProjectName = "Desking"
    
    var dateFormatter :DateFormatter
    let isoDate =  "2018-09-01T09:01:16.8012"
    
    init(projectsModel: ProjectViewModel, timeEntriesModel: TimeEntriesViewModel, selectedProjectName: String = "Desking") {
        self.projectsModel = projectsModel
        self.timeEntriesModel = timeEntriesModel
        self.selectedProjectName = selectedProjectName
        self.dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy'-'MM'-'dd'T'HH':'mm':'ss"
    }
    
    var body: some View {
        NavigationView {
            VStack{
                Text("Geloggte Zeit für: ")
                    .font(.title3)
                Picker("Projekte", selection: $selectedProjectName){
                    ForEach(projectsModel.projects){ item in
                        Text(item.projName).tag(item.projName)
                    }
                }
                .padding()
                .frame(width: 250, height: 40)
                .background(.yellow)
                .clipShape(Capsule())
                .padding(.bottom)
                
                List{
                    ForEach(timeEntriesModel.timeEntries){ item in
                        if(selectedProjectName == item.projectName){
                            VStack{
//                                Text("\(item.userLastName) (\(item.userRole))")
                                
                                Text(dateFormatter.date(from: item.starttime)!, format: .dateTime.day().month().year())
                                
                                Text("hi")
                            }
                        }
                    }
                }
            }
        }
        .navigationBarTitle("hi")
    }
    
    
    
}

struct TimeOverviewView_Previews: PreviewProvider {
    static let projectsVM = ProjectViewModel()
    static let timeEntryVM = TimeEntriesViewModel()
    
    static var previews: some View {
        TimeOverviewView(projectsModel: projectsVM, timeEntriesModel: timeEntryVM)
    }
}
