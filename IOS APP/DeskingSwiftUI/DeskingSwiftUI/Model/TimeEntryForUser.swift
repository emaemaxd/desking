import Foundation

struct TimeEntryModel{
    private(set) var timeEntries = [TimeEntryForUser]()
    
    struct TimeEntryForUser: Codable, Identifiable {
        var id: Int
        
        var timepassed: Int
        var starttime: String
        var longitude: Float
        var latitude:Float
        
        var projectId: Int?
        var projectName: String?
        
//       TODO: actually not needed, weg vom backend
        var userId: Int?
//        var userLastName: String
//        var userRole: Int
        
        /*
         "projectId": 1,
         "projectName": "HTL Leonding Webpage",
         "userId": 1
         */
    }
    
    mutating func setTimeEntriesForUser(timeEntries: [TimeEntryForUser]){
        self.timeEntries = timeEntries
    }
}
