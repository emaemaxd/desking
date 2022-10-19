//
//  VacationView.swift
//  DeskingSwiftUI
//
//  Created by Ema xd on 06.10.22.
//

import SwiftUI

struct VacationView: View {
    @State var notes = ""
    @State var vacationType = "geb"
    
    @State var startDate = Date()
    @State var endDate = Date()
    
    let dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current
        let startComponents = DateComponents(year: 2022, month: 1, day: 1)
        let endComponents = DateComponents(year: 2022, month: 12, day: 31)
        return calendar.date(from:startComponents)!
        ...
        calendar.date(from:endComponents)!
    }()
    
    var body: some View {
        NavigationView{
//        HStack{
//            Spacer()
            VStack(spacing: 20){
                //                HStack{
                //                    Spacer()
                VStack{
                    DatePicker(
                        "Von",
                        selection: $startDate,
                        in: dateRange,
                        displayedComponents: [.date]
                    )
                    DatePicker(
                        "Bis",
                        selection: $endDate,
                        in: dateRange,
                        displayedComponents: [.date]
                    )
                }
                
                Picker(selection: $vacationType, label: Text("Art von Urlaub:")) {
                    Text("Gebührenurlaub").tag("geb")
                    Text("Zeitausgleich").tag("zeit")
                }.pickerStyle(SegmentedPickerStyle())
                
                
                Button{
                    //                    TODO: post
                } label:{
                    Label("Urlaub buchen", systemImage: "airplane")
                }
                .buttonStyle(BorderedButtonStyle())
                .padding()
                
            }
            .frame(minWidth: 250, idealWidth: 250, maxWidth: 250)
            .navigationBarTitle("Urlaub anfragen")
        }
    }
}

struct VacationView_Previews: PreviewProvider {
    static var previews: some View {
        VacationView()
    }
}
