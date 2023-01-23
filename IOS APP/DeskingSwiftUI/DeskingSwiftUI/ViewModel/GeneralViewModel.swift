import Foundation

class GeneralViewModel: ObservableObject{
    @Published var baseApiUrl = "http://localhost:8080/api/"
    @Published var selectedProjectName = "Desking"
    @Published var alleZeitenUrl = "http://localhost:8000/allezeiten"
}
