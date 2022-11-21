import Foundation

struct PrModel {
    private(set) var projects = [Project]()
    
    struct Project:Codable, Identifiable {
        var id: Int = 0
        var name: String = ""
        var description: String = ""
        var customerid: Customer?
    }
    
    struct Customer: Codable{
        var id: Int
        var firstname: String?
        var lastname: String?
        var email: String
        var tel: Int        // TODO: make backend change to String instead of Int
    }
    
    mutating func setProjects(projects: [Project]){
        self.projects = projects
    }
}

class ProjectViewModel: ObservableObject{
    typealias Project = PrModel.Project
    @Published var model = PrModel()
    var projects: [Project]{
        model.projects
    }
    
    func setProjects(projects: [Project]){
        DispatchQueue.main.async {
            self.model.setProjects(projects: projects)
        }
    }
    
    func getData(from url: String){
        print("running getData()-func...")
        let task = URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: { data, response, error in
            
            guard let data = data, error == nil else {
                print("could not get data")
                return
            }
            
            // get data
            var results: [Project]?
            do {
                results = try JSONDecoder().decode([PrModel.Project].self, from: data)
                self.model.setProjects(projects: results!)
            } catch{
                print("failed to convert data \(error)")
            }
            
            guard let json = results else {
                print("empty data")
                return
            }
            
            /*
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
             = projects[0].name
             */
        })
        task.resume()
        
    }
}
