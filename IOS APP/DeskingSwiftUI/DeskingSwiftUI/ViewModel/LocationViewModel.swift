import Foundation

class LocationViewModel: ObservableObject{
    typealias Location = LocationModel.LocationForUser
    @Published var locationsForUserModel = LocationModel()
    var locationsForUser: [Location]{
        locationsForUserModel.locationsForUser
    }
    
    func setLocationsForUser(locations: [Location]){
        DispatchQueue.main.async {
            self.locationsForUserModel.setLocationsForUser(locations: locations)
        }
    }
    
    func getData(from url: String){
        print("running getData()-func for LocationsForUser...")
        
        let task = URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: { data, response, error in
            
            guard let data = data, error == nil else {
                print("could not get data from \(url)")
                return
            }
            
            var results: [Location]?
            do{
                results = try
                JSONDecoder().decode([LocationModel.LocationForUser].self, from: data)
                self.locationsForUserModel.setLocationsForUser(locations: results!)
            } catch {
                print("failed to convert data \(error)")
            }
        })
        task.resume()
    }
}
