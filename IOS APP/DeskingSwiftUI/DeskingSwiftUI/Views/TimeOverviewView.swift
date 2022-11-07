import SwiftUI

struct TimeOverviewView: View {
    
    let url = "http://127.0.0.1:8080/api/projects"
    let projects =  [Project]()
    
    var body: some View {
        NavigationView {
            
            Button{
                getData(from: url, saveInto: projects)
            } label: {
                Text("press me")
            }
        }.navigationBarTitle("hi")
    }
    
    
    func getData(from url: String, saveInto: [Any]){
        let task = URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: { data, response, error in
            
            guard let data = data, error == nil else {
                print("could not get data")
                return
            }
            
            print("HALLL ", data)
            // get data
            var results: [Project]?
            do {
                results = try JSONDecoder().decode([Project].self, from: data)
            } catch{
                print("failed to convert data \(error)")
            }
            
            guard let json = results else {
                return
            }
            for project in json{
                let oneProject = Project()
                oneProject.title = project["title"] as! String
                oneProject.userId = project["userId"] as! Int
                oneProject.id = project["id"] as! Int
                oneProject.completed = project["completed"] as! Bool
                
//                toDoModel.todos.append(onetodo)
            }
            print(json)
        })
        
        task.resume()
    }
}

struct TimeOverviewView_Previews: PreviewProvider {
    static var previews: some View {
        TimeOverviewView()
    }
}
