import SwiftUI

struct TimeOverviewView: View {
    
    let url = "http://127.0.0.1:8080/api/projects"
    @ObservedObject var projectsModel: ProjectViewModel
    @ObservedObject var timeEntriesModel: TimeEntriesViewModel
//    @State var fullSelectedProject = Project()
    @State var selectedProject = "Desking"
    
    var body: some View {
        NavigationView {
            VStack{
                Text("Projet auswählen...")
                    .font(.title3)
                HStack{
                    Text("Geloggte Zeit für: ")
                        .font(.title3)
                    Picker("Projekte", selection: $selectedProject){
                        ForEach(projectsModel.projects) { project in
                            Text(project.name).tag(project.id)
//                            Text(project.name).tag(project)
                        }
                    }
                }
                .foregroundColor(Color.white)
                .padding()
                .frame(width: 250, height: 40)
                .background(.yellow)
                .clipShape(Capsule())
                .overlay(
                    RoundedRectangle(cornerRadius: 7)
                        .stroke(.primary, lineWidth: 1.5)
                )
                .padding(.bottom)
                
                
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
