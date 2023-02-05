import Foundation
import SwiftUI

class GeneralViewModel: ObservableObject{
    @Published var baseApiUrl = "http://localhost:8080/api/"
    @Published var selectedProjectName = "Desking"
    @Published var alleZeitenUrl = "http://localhost:8000/allezeiten"
    
    @Published var colors = [
        Color("softgirl"),
        Color("brickshade"),
        Color("korallencool"),
        Color("vampire"),
        Color("orang")]
}
