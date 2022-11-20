import Foundation

struct TimeEntryModel{
    private(set) var timeEntries = [TimeEntry]()
    
    /*
    struct Response: Codable {
        var timeEntry: OneTimeEntry
        var timeEntryCustomer: TimeCustomer
        var firstName: String
        var lastName: String
    }
     */
    
    
    struct TimeCustomer: Codable{
        var id: Float
        var firstName: String
        var lastName: String
        var email: String
        var tel: Int
    }
    
    struct TimeEntry:Codable {
        var timepassed: Int
        var starttime: String
        var longitude: Float
        var latitude:Float
    }
    
    

}
