//
//  Stopwatch.swift
//  DeskingSwiftUI
//
//  Created by Ema xd on 02.10.22.
//

import SwiftUI

struct Stopwatch: View {
    let trackTimeVM = TrackTimeModel()
    @State private var progressTime = 0
    
    var hours: Int {
        progressTime / 3600
    }
    
    var minutes: Int {
        (progressTime % 3600) / 60
    }
    
    var seconds: Int {
        progressTime % 60
    }
    
    var timer: Timer {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {_ in
            progressTime += 1
        }
    }
    
    var body: some View {
        HStack(spacing: 2) {
            StopwatchUnitView(timeUnit: hours)
            Text(":")
            StopwatchUnitView(timeUnit: minutes)
            Text(":")
            StopwatchUnitView(timeUnit: seconds)
        }
        .font(.title)
        .onAppear(perform: { _ = timer })
    }
    
    func start(){
        _ = timer
    }

}



struct Stopwatch_Previews: PreviewProvider {
    static var previews: some View {
        Stopwatch()
    }
}

struct StopwatchUnitView: View {
    
    var timeUnit: Int
    
    /// Time unit expressed as String.
    /// - Includes "0" as prefix if this is less than 10
    var timeUnitStr: String {
        let timeUnitStr = String(timeUnit)
        return timeUnit < 10 ? "0" + timeUnitStr : timeUnitStr
    }
    
    var body: some View {
        HStack (spacing: 2) {
            Text(timeUnitStr.substringIn(index: 0)).frame(width: 20)
            Text(timeUnitStr.substringIn(index: 1)).frame(width: 20)
        }
    }
}

extension String {
    func substringIn(index: Int) -> String {
        let arrayString = Array(self)
        return String(arrayString[index])
    }
}
