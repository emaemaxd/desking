import SwiftUI
import WebKit

struct TimeOverviewView: View {
    @ObservedObject var generelVM: GeneralViewModel
    @ObservedObject var projectsModel: ProjectViewModel
    @ObservedObject var timeEntriesModel: TimeEntriesViewModel
    
    @State var showWebView = false
    
    // TODO: change selectedProject to environment variable
    @State var selectedProjectName = "Desking"
    
    var dateFormatter :DateFormatter
    
    init(projectsModel: ProjectViewModel, timeEntriesModel: TimeEntriesViewModel) {
        self.projectsModel = projectsModel
        self.timeEntriesModel = timeEntriesModel
        self.dateFormatter = DateFormatter()
        self.generelVM = GeneralViewModel()
        dateFormatter.dateFormat = "yyyy'-'MM'-'dd'T'HH':'mm':'ss"
    }
    
    var body: some View {
        NavigationView {
            VStack{
                HStack{
                    Text("Geloggte Zeit für: ")
                    Picker("Projekte", selection: $generelVM.selectedProjectName){
                        ForEach(projectsModel.projects){ item in
                            Text(item.projName).tag(item.projName)
                        }
                    }
                }
                
                Button{
                    showWebView.toggle()
                }label:{
                    Text("mehr Infos...")
                }
                .sheet(isPresented: $showWebView){
                    WebView(url: URL(string: generelVM.alleZeitenUrl)!)
                }
                // TODO: Project name should be unique
                List{
                    ForEach(timeEntriesModel.timeEntries){ item in
                        if(selectedProjectName == item.projectName){
                            VStack{
                                Text(dateFormatter.date(from: item.starttime)!, format: .dateTime.day().month().year())
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .foregroundColor(.gray)
                                    .font(.subheadline)
                                
                                HStack{
                                    Text("\(item.lastname)")
                                    Spacer()
                                    Text("\(dateFormatter.date(from: item.starttime)!, format: .dateTime.hour().minute()) -")
                                    Text("\(dateFormatter.date(from: item.starttime)!.adding(seconds: item.timepassed), format: .dateTime.hour().minute())")
                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle("Einträge")
            
        }
    }
    
    
    
}

struct WebView : UIViewRepresentable {
    var url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}

extension Date {
    func adding(seconds: Int) -> Date {
        Calendar.current.date(byAdding: .second, value: seconds, to: self)!
    }
    
    func adding(minutes: Int) -> Date {
        Calendar.current.date(byAdding: .minute, value: minutes, to: self)!
    }
    
    func adding(hours: Int) -> Date {
        Calendar.current.date(byAdding: .hour, value: hours, to: self)!
    }
}

struct TimeOverviewView_Previews: PreviewProvider {
    static let projectsVM = ProjectViewModel()
    static let timeEntryVM = TimeEntriesViewModel()
    
    static var previews: some View {
        TimeOverviewView(projectsModel: projectsVM, timeEntriesModel: timeEntryVM)
    }
}
