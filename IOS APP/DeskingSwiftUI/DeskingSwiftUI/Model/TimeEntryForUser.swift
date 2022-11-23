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
        
        var userId: Int?
        var userLastName: String
        var userRole: Int
    }
    
    mutating func setTimeEntriesForUser(timeEntries: [TimeEntryForUser]){
        self.timeEntries = timeEntries
    }
}
