
import Foundation

struct LocationModel{
    private (set) var locationsForUser = [LocationForUser]()
    
    struct LocationForUser: Codable, Identifiable {
        var id: Int
        var name: String
        var latitude: Float
        var longitude: Float
        var info: String?
    }
    
    mutating func setLocationsForUser(locations: [LocationForUser]){
        self.locationsForUser = locations
    }
}
