//
//  Project.swift
//  DeskingSwiftUI
//
//  Created by Ema xd on 07.11.22.
//

import Foundation

struct Project:Codable {
    var id: Int = 0
    var name: String = ""
    var description: String = ""
    var customerid: Customer? 
}

struct Customer: Codable{
    var id: Int
    var firstname: String?
    var lastname: String?
    var email: String
    var tel: Int        // TODO: make backend change to String instead of Int
}

//class ProjectClass: ObservableObject{
//    @Published var projects = [Project]()
//}
