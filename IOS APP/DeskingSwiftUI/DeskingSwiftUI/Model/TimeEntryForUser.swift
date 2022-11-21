import Foundation

struct TimeEntryModel{
    private(set) var timeEntries = [TimeEntryForUser]()
    
    struct TimeEntryForUser: Codable {
        var timepassed: Int
        var starttime: String
        var longitude: Float
        var latitude:Float
        var projectid: Int
    }
    
    mutating func setTimeEntriesForUser(timeEntries: [TimeEntryForUser]){
        self.timeEntries = timeEntries
    }
}
