import SwiftUI

struct TimeOverviewView: View {
    
    let url = "http://127.0.0.1:8080/api/projects"
    @ObservedObject var projectsModel: ProjectViewModel
//    @State var fullSelectedProject = Project()
    @State var selectedProject = "Desking"
    
    var body: some View {
        NavigationView {
            VStack{
                Text("Projet auswählen...").font(.title3)
                HStack{
                    Text(selectedProject)
                    Picker("Projekte", selection: $selectedProject){
                        ForEach(projectsModel.projects) { project in
                            Text(project.name).tag(project.name)
//                            Text(project.name).tag(project)
                        }
                    }
                }
                .padding()
                .frame(width: 250, height: 40)
                .clipShape(Capsule())
                .overlay(
                    RoundedRectangle(cornerRadius: 7)
                        .stroke(.primary, lineWidth: 1.5)
                )
                .padding(.bottom)
                
                Button{
                    // getData(from: url)
//                    if let index = find(projects, selectedProject){
                        // found! do something }
                    print("button pressed...")
//                    TimeEntriesView()
                } label: {
                    Text("auswahl bestätigen")
                }
                .buttonStyle(BorderedProminentButtonStyle())
            }
        }
        .navigationBarTitle("hi")
    }
    
    
    
}

struct TimeOverviewView_Previews: PreviewProvider {
    static let projectsVM = ProjectViewModel()
    static var previews: some View {
        TimeOverviewView(projectsModel: projectsVM)
    }
}
