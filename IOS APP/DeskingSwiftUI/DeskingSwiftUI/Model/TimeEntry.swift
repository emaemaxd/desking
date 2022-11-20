import Foundation

struct TimeEntryModel{
//    private(set) var timeEntries = [TimeEntry]()
    
    /*
    struct Response: Codable {
        var timeEntry: OneTimeEntry
        var timeEntryCustomer: TimeCustomer
        var firstName: String
        var lastName: String
    }
     */
//    struct TimeEntryAndProjectId: Codable{
//        var timeEntry: OneTimeEntry
//        var projectId: Int
//    }
    
    struct OneTimeEntry:Codable {
        var timepassed: Int
        var starttime: String
        var longitude: Float
        var latitude:Float
    }
    
    

}
