//
//  TimeEntriesView.swift
//  DeskingSwiftUI
//
//  Created by Ema xd on 08.11.22.
//

import SwiftUI

struct TimeEntriesView: View {
//    let selectedProj: Project?
//    var entries = OneTimeEntry()
    
    var body: some View{
        VStack{
            Text("hello world")
        }.onAppear{
            /*
             print("running getData()-func for entries...")
             let task = URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: { data, response, error in
             
             guard let data = data, error == nil else {
             print("could not get data")
             return
             }
             
             // get data
             var results: [Project]?
             do {
             results = try JSONDecoder().decode([Project].self, from: data)
             } catch{
             print("failed to convert data \(error)")
             }
             
             guard let json = results else {
             print("empty data")
             return
             }
             
             for oneEntry in json{
             // TODO:
             var temp = OneTimeEntry()
             temp.name = oneEntry.name
             
             .append(temp)
             //                returnProjects.append(temp)
             print(temp)
             }
             //            print(json)
             
             })
             task.resume()
             //        return returnProjects
             }*/
        }
    }
    
}

struct TimeEntriesView_Previews: PreviewProvider {
    static var previews: some View {
        TimeEntriesView()
    }
}
