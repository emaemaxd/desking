import Foundation

struct PrModel {
    private(set) var projects = [Project]()
    
    struct Project:Codable, Identifiable {
        var id: Int = 0
        var projName: String = ""
        var projDescr: String = ""
        var customerId: Int?
        var customerName: String?
        var customerEmail: String?
        var userLastName: String = ""
        var userRole: Int = 0
    }
    
    /*
    struct Customer: Codable{
        var id: Int
        var firstname: String?
        var lastname: String?
        var email: String
        var tel: Int        // TODO: make backend change to String instead of Int
    }
     */
    
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
                print("could not get data from \(url)")
                return
            }
            
            // get actual data
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
        })
        task.resume()
        
    }
}
