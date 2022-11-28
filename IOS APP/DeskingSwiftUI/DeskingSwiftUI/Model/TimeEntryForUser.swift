import Foundation

struct TimeEntryModel{
    private(set) var timeEntries = [TimeEntryForUser]()
    
    struct TimeEntryForUser: Codable, Identifiable {
        var id: Int
        
        var timepassed: Int
        var starttime: String
        
//        TODO: should be given
//        var longitude: Float
//        var latitude:Float
        
        var projectId: Int?
        var projectName: String?
        
//       TODO: actually not needed, weg vom backend
        var userId: Int?
        var lastname: String
//        var userRole: Int
        
    }
    
    mutating func setTimeEntriesForUser(timeEntries: [TimeEntryForUser]){
        self.timeEntries = timeEntries
    }
    
    struct TimeEntryForPost: Decodable{
        var entryID: Int? = 0
        var userID = 1
        var projectID = 1
        var latitude = 0
        var longitude = 0
        var timepassed = 123
        var starttime = "2022-03-10T12:15:50"
    }
}
