//
//  Project.swift
//  DeskingSwiftUI
//
//  Created by Ema xd on 07.11.22.
//

import Foundation

struct Project:Codable {
    var id: Int
    var name: String
    var description: String
    var customerid: Customer
}

struct Customer: Codable{
    var id: Int
    var firstname: String?
    var lastname: String?
    var email: String
    var tel: String
}
