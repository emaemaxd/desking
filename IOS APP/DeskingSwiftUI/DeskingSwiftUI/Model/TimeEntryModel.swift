//
//  TimeEntryModel.swift
//  DeskingSwiftUI
//
//  Created by Ema xd on 07.11.22.
//

import Foundation


struct Response: Codable {
    var timeEntry: OneTimeEntry
    var timeEntryCustomer: TimeCustomer
    var firstName: String
    var lastName: String
}

struct TimeCustomer: Codable{
    var id: Float
    var firstName: String
    var lastName: String
    var email: String
    var tel: Int
}

struct OneTimeEntry:Codable {
    var timepassed: Int
    var starttime: String
    var longitude: Float
    var latitude:Float
}


