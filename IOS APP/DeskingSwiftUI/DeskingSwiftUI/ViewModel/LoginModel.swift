import Foundation

class LoginModel: ObservableObject{
    // insert into Userss (id,Role, email, firstname, lastname, password) values (2,1, 'e.halilovic@students.htl-leonding.ac.at', 'Ema','Halilovic','password');
    @Published var userId = 2
    @Published var lastname = "Halilovic"
    @Published var password = "password"
}
