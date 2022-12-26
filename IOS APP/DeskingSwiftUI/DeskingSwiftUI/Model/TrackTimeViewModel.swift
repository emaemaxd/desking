//
//  TrackTimeModel.swift
//  DeskingSwiftUI
//
//  Created by Ema xd on 25.09.22.
//

import Foundation
import SwiftUI

class TrackTimeViewModel: ObservableObject{
    @Published var startedTimer = false
    @Published var time = 0
    
    var timeentryPost: TimeEntryModel.TimeEntryForUser?
    
    //    TODO: das usen
    @Published var timeEntryModelToPost = TimeEntryModel()
    
    
    func sendTimeEntry(url: String){
        var toSend = TimeEntryModel.TimeEntryForPost()
        toSend.projectID = -2
        
        let jsonData = try? JSONEncoder().encode(toSend)

        // create post request
        let postUrl = URL(string: url)!
        var request = URLRequest(url: postUrl)
        request.httpMethod = "POST"
        request.setValue("application/json; charset=utf-8", forHTTPHeaderField: "Content-Type")  // the request is JSON


        // insert json data to the request
        request.httpBody = jsonData

        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else {
                print(error?.localizedDescription ?? "No data")
                return
            }
            let responseJSON = try? JSONSerialization.jsonObject(with: data, options: [])
            if let responseJSON = responseJSON as? [String: Any] {
                print(responseJSON)
            }
        }

        task.resume()
            
        }
        
        
        func timeEntryStart() {
            // start timer
        }
        
        
    }

