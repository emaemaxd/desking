import Foundation

class GeneralViewModel: ObservableObject{
    @Published var selectedProjectName = "Desking"
    @Published var alleZeitenUrl = "http://localhost:8000/allezeiten"
}
