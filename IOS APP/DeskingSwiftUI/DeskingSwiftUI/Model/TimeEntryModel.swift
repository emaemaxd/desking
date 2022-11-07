//
//  TimeEntryModel.swift
//  DeskingSwiftUI
//
//  Created by Ema xd on 07.11.22.
//

import Foundation

let url = "http://localhost:8080/api/entries/project/1"

struct Response: Codable {
    let results: TimeEntryModel
    let status: String
}

struct TimeEntryModel:Codable {
    var timepassed: Int
    var starttime: String
    var long: Float
    var lat:Float
}
