import SwiftUI

struct TimeOverviewView: View {
    
    let url = "http://127.0.0.1:8080/api/projects"
    @State var projects =  [Project]()
    @State var fullSelectedProject = Project()
    @State var selectedProject = "Desking"
    
    var body: some View {
        NavigationView {
            VStack{
                Text("Projet auswählen...").font(.title3)
                HStack{
                    Text(selectedProject)
                    Picker("Projekte", selection: $selectedProject){
                        ForEach(projects, id: \.id) { project in
                            Text(project.name).tag(project.name)
//                            Text(project.name).tag(project)
                        }
                    }
//                    .onChange(of: selectedProject) {
//                        self.fullSelectedProject = $0.rawValue
//                    }
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
        .onAppear{
            getData(from: url)
        }
    }
    
    func getData(from url: String){
//        var returnProjects = [Project]()
        print("running getData()-func...")
        let task = URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: { data, response, error in
            
            guard let data = data, error == nil else {
                print("could not get data")
                return
            }
            
            // get data
            var results: [Project]?
            do {
                results = try JSONDecoder().decode([Project].self, from: data)
            } catch{
                print("failed to convert data \(error)")
            }
            
            guard let json = results else {
                print("empty data")
                return
            }
            
            for onePr in json{
                var temp = Project()
                temp.name = onePr.name
                temp.id = onePr.id
                temp.description = onePr.description
                temp.customerid = onePr.customerid
                
                projects.append(temp)
//                returnProjects.append(temp)
                print(temp)
            }
            //            print(json)
            selectedProject = projects[0].name
        })
        task.resume()
//        return returnProjects
    }
    
}

struct TimeOverviewView_Previews: PreviewProvider {
    static var previews: some View {
        TimeOverviewView()
    }
}
