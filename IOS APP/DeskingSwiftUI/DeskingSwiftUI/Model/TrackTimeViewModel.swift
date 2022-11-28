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
    
        
        var urlSession = URLSession.shared
        
        func sendPostRequest(
            to url: URL,
            body: Data,
            then handler: @escaping (Result<Data, Error>) -> Void
        ) {
            // To ensure that our request is always sent, we tell
            // the system to ignore all local cache data:
            var request = URLRequest(
                url: url,
                cachePolicy: .reloadIgnoringLocalCacheData
            )
            
            request.httpMethod = "POST"
            request.httpBody = body
            
            let task = urlSession.dataTask(
                with: request,
                completionHandler: { data, response, error in
                    // Validate response and call handler
                    }
            )
            
            task.resume()
    }
    
    func timeEntryStart() {
        // start timer
    }
    
    
}
