import SwiftUI

struct TimeOverviewView: View {
    
    let url = "http://127.0.0.1:8080/api/entries/project/1"
    
    var body: some View {
        NavigationView {
            Button{
                getData(from: url)
            } label: {
                Text("press me")
            }
        }.navigationBarTitle("hi")
    }
    
    
                    func getData(from url: String){
    let task = URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: { data, response, error in
        
        guard let data = data, error == nil else {
            print("could not get data")
            return
        }
        
        print("HALLL ", data)
        // get data
        var results:Response?
        do {
            results = try JSONDecoder().decode(Response.self, from: data)
        } catch{
            print("failed to convert data \(error)")
        }
        
        guard let json = results else {
            return
        }
        
        print(json.lastName)
        print(json.timeEntry.timepassed)
    })
    
    task.resume()
                    }
    

}

struct TimeOverviewView_Previews: PreviewProvider {
    static var previews: some View {
        TimeOverviewView()
    }
}
