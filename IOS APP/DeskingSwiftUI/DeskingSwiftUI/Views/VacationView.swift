//
//  VacationView.swift
//  DeskingSwiftUI
//
//  Created by Ema xd on 06.10.22.
//

import SwiftUI

struct VacationView: View {
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
        HStack{
            Spacer()
            VStack{
//                HStack{
//                    Spacer()
                    DatePicker(
                        "Von",
                        selection: $startDate,
                        in: dateRange,
                        displayedComponents: [.date]
                    )
//                    Spacer()
                    DatePicker(
                        "Bis",
                        selection: $endDate,
                        in: dateRange,
                        displayedComponents: [.date]
                    )
//                }
                Button{
                    
                } label: {
                    Text("Urlaubsantrag senden")
                }
            }
            Spacer()
        }
    }
}

struct VacationView_Previews: PreviewProvider {
    static var previews: some View {
        VacationView()
    }
}
