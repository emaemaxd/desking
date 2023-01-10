import SwiftUI
import WebKit

struct TimeEntriesView: View {
//    let selectedProj: Project?
//    var entries = OneTimeEntry()
    
    var body: some View{
        VStack{
            NavigationView{
                // TODO: webview not in main thread?
                WebView(url: URL(string: "https://google.com")!)
                    .frame(height: 500.0)
                    .cornerRadius(10)
                    .shadow(color: .black.opacity(0.3), radius: 20.0, x: 5, y: 5)
            }.navigationBarTitle("Home")
        }
    }
    
}

struct TimeEntriesView_Previews: PreviewProvider {
    static var previews: some View {
        TimeEntriesView()
    }
}
