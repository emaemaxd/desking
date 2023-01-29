import SwiftUI
import WebKit

struct TimeEntriesView: View {
//    let selectedProj: Project?
//    var entries = OneTimeEntry()
    
    var body: some View{
        VStack{
            Text("")
            Text("00:00:00")
            Text("")
                VStack {
                    PieChartView(sizes: [30, 28])
                        .frame(width: 280, height: 280)
                    Text("Two Sectors")
                }
            }
        }
}

struct TimeEntriesView_Previews: PreviewProvider {
    static var previews: some View {
        TimeEntriesView()
    }
}
