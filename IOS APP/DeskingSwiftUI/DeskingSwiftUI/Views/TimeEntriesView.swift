import SwiftUI
import WebKit

struct TimeEntriesView: View {
//    let selectedProj: Project?
//    var entries = OneTimeEntry()
    @ObservedObject var generalVM: GeneralViewModel
    @ObservedObject var projectsModel: ProjectViewModel
    @ObservedObject var timeEntriesModel: TimeEntriesViewModel
    
    let mockProjects = ["Desking", "Project ABC", "XYZ-ye", "Nochba", "HTL Leonding Homepage"]
    let colors = [
        Color("softgirl"),
        Color("brickshade"),
        Color("korallencool"),
        Color("vampire"),
        Color("orang")
    ]
    
    var body: some View{
        NavigationView{
            VStack{
                Text("")
                Text("00:00:00")
                    .font(.largeTitle)
                Text("")
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
