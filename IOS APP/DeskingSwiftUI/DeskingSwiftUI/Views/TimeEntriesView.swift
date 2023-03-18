import SwiftUI
import WebKit

struct TimeEntriesView: View {
//    let selectedProj: Project?
//    var entries = OneTimeEntry()
    @ObservedObject var generalVM: GeneralViewModel
    @ObservedObject var projectsModel: ProjectViewModel
    @ObservedObject var timeEntriesModel: TimeEntriesViewModel
    
    //let dateFormatter = DateFormatter()
    let dateFormatter = DateFormatter()
    
    let mockProjects = ["Desking", "Project ABC", "XYZ-ye", "Nochba", "HTL Leonding Homepage"]
    let colors = [
        Color("softgirl"),
        Color("brickshade"),
        Color("korallencool"),
        Color("vampire"),
        Color("orang")
    ]
    // TODO: change endpoint url to entries/userid
    var sumOfEntries : String {
        var sec = 0     // Sekunden
        for time in timeEntriesModel.timeEntries {
            dateFormatter.dateFormat = "yyyy'-'MM'-'dd'T'HH':'mm':'ss"
            if let temp = dateFormatter.date(from: time.starttime){     // datum von item zum überprüfen
                if let lastWeekDate = Calendar.current.date(byAdding: .day, value: -7, to: Date()) {    // datum von letzter woche
                    if (temp > lastWeekDate) {
                        sec = sec + time.timepassed       // Sekunden
                    }
                }
            }
        }
        return "\(sec / 3600) : \((sec % 3600)/60) : \((sec % 3600) % 60)"
    }
    
    var body: some View{
        NavigationView{
            VStack(spacing:20){
                Text("Insgesamt die letzten 7 Tage")
                    .font(.title2)
                Text("\(sumOfEntries)")
                    .fontWeight(.black)
                
                Text("Davon Projekte")
                    .font(.title2)
                    .multilineTextAlignment(.leading)
                if timeEntriesModel.timeEntries.isEmpty {
                    Text("oops, something went wrong")
                } else {
//                     Text(timeEntriesModel.timeEntries[0].starttime)
                    /*
                        ForEach(timeEntriesModel.counts) { key, value in
                            Section(header: Text(key)) {
                                Text("\(value)")
                            }
                        }
                    */
                }
                
                PieChartView(sizes: [30, 28, 40, 100, 30])
                        .frame(width: 250, height: 250)
                VStack{
                    HStack{
                        Spacer()
                        Label(mockProjects[0], systemImage: "rectangle.inset.filled")
                            .foregroundColor(generalVM.colors[0])
                        Spacer()
                        Label(mockProjects[2], systemImage: "rectangle.inset.filled")
                            .foregroundColor(generalVM.colors[2])
                        Spacer()
                        Label(mockProjects[4], systemImage: "rectangle.inset.filled")
                            .foregroundColor(generalVM.colors[4])
                        Spacer()
                    }
                    HStack{
                        Label(mockProjects[1], systemImage: "rectangle.inset.filled")
                            .foregroundColor(generalVM.colors[1])
                        Label(mockProjects[3], systemImage: "rectangle.inset.filled")
                            .foregroundColor(generalVM.colors[3])
                    }
                }
                Spacer()
                Spacer()
            }.navigationBarTitle("Home")
        }
    }
}

struct TimeEntriesView_Previews: PreviewProvider {
    static var previews: some View {
        let gvm = GeneralViewModel()
        let projectsVM = ProjectViewModel()
        let timeEntryVM = TimeEntriesViewModel()
        
        TimeEntriesView(generalVM: gvm, projectsModel: projectsVM, timeEntriesModel: timeEntryVM)
    }
}
