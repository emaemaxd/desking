//
//  PieChartView.swift
//  DeskingSwiftUI
//
//  Created by Ema xd on 29.01.23.
//

import SwiftUI

struct PieChartView: View {
    var sizes: [Double]
    let angleOffset = 90.0
    let colors = [
        Color(.red),
        Color(.blue),
        Color(.green),
        Color(.yellow),
        Color(.purple)
    ]
    
    var body: some View {
        let total = sizes.reduce(0, +)      // sums all elems of sizes
        let angles = sizes.sorted(by: >).map {
            $0 * 360.0 / total
        }
        var sum = 0.0
        let runningAngles = angles.map {   // makes array of sum from elements in angles
            (sum += $0, sum).1              // .1 says only return elem in place 1
        }
        
        ZStack {
            Text("hallo welt")
            ForEach(0..<runningAngles.count) { i in
                let startAngle = i == 0 ? 0.0 : runningAngles[i-1]
                Sector(startAngle: Angle(degrees: startAngle - angleOffset), endAngle: Angle(degrees: runningAngles[i] - angleOffset))
                    .fill(colors[i % colors.count])
            }
        }
        
    }
}

struct PieChartView_Previews: PreviewProvider {
    static var previews: some View {
        PieChartView(sizes: [20.0, 15.0, 50.0, 60.0, 5.0])
    }
}

struct Sector: Shape {
    var startAngle: Angle
    var endAngle: Angle
    
    func path(in rect: CGRect) -> Path {
        // centre of the containing rect
        let c = CGPoint(x: rect.width/2.0, y: rect.height/2.0)
        // radius of a circle that will fit in the rect
        let r = Double(min(rect.width,rect.height)) * 0.9 / 2.0
        var path = Path()
        path.move(to: c)
        path.addArc(center: c,
                    radius: CGFloat(r),
                    startAngle: startAngle,
                    endAngle: endAngle,
                    clockwise: false
        )
        path.closeSubpath()
        return path
    }
}

