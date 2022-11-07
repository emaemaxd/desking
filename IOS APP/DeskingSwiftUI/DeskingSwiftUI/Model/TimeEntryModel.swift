//
//  TimeEntryModel.swift
//  DeskingSwiftUI
//
//  Created by Ema xd on 07.11.22.
//

import Foundation


struct Response: Codable {
    let results: TimeEntryModel
    let status: String
}

struct TimeEntryModel: Codable{
    var firstName: String
    var lastName: String
    var timeEntry: OneTimeEntryModel
}

struct OneTimeEntryModel:Codable {
    var timepassed: Int
    var starttime: String
    var long: Float
    var lat:Float
}


func getData(from url: String){
    let task = URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: { data, response, error in
        
        guard let data = data, error == nil else {
            print("could not get data")
            return
        }
        
        // get data
        var results:Response?
        do {
            results = try JSONDecoder().decode(Response.self, from: data)
        } catch{
            print("failed to convert data \(error.localizedDescription)")
        }
        
        guard let json = results else {
            return
        }
        
        print(json.status)
        print(json.results.firstName)
        print(json.results.lastName)
    })
    
    task.resume()
}

