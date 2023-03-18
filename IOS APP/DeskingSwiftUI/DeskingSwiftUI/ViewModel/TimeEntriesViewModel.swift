import Foundation

class TimeEntriesViewModel: ObservableObject{
    typealias TimeEntry = TimeEntryModel.TimeEntryForUser
    @Published var timeEntryModel = TimeEntryModel()
    var timeEntries: [TimeEntry]{
        timeEntryModel.timeEntries
    }
    var counts = [String:Int]()
    
    func setTimeEntriesForUser(timeEntries: [TimeEntry]){
        DispatchQueue.main.async {
            self.timeEntryModel.setTimeEntriesForUser(timeEntries: timeEntries)
        }
    }
    
    func getData(from url: String){
        print("running getData()-func for TimeEntriesForUser...")
        let task = URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: { data, response, error in
            
            guard let data = data, error == nil else{
                print("could not get data from \(url)")
                return
            }
            
            // get actual data
            var results: [TimeEntry]?
            do {
                results = try
                JSONDecoder().decode([TimeEntryModel.TimeEntryForUser].self, from: data)
                DispatchQueue.main.async {
                    self.timeEntryModel.setTimeEntriesForUser(timeEntries: results!)
                }
            } catch {
                print("failed to convert data \(error)")
            }
        })
        task.resume()
    }
}
