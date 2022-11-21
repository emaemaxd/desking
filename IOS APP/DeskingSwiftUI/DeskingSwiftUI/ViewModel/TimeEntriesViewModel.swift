//
//  TimeEntriesViewModel.swift
//  DeskingSwiftUI
//
//  Created by Ema xd on 20.11.22.
//

import Foundation

class TimeEntriesViewModel: ObservableObject{
    typealias TimeEntry = TimeEntryModel.TimeEntryForUser
    @Published var timeEntryModel = TimeEntryModel()
    var timeEntries: [TimeEntry]{
        timeEntryModel.timeEntries
    }
    
    func setTimeEntriesForUser(timeEntries: [TimeEntry]){
        DispatchQueue.main.async {
            self.timeEntryModel.setTimeEntriesForUser(timeEntries: timeEntries)
        }
    }
    
    func getData(from url: String){
        print("running getData()-func for TimeEntriesForUser...")
        let task = URLSession.shared.dataTask(with: <#T##URLRequest#>, completionHandler: <#T##(Data?, URLResponse?, Error?) -> Void#>)
    }
}
