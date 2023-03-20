//
//  SettingsView.swift
//  DeskingSwiftUI
//
//  Created by Ema xd on 03.10.22.
//

import SwiftUI

struct SettingsView: View {
    @State var name = "Ema Halilovic"
    @State var email = "ema.halilovic@htl-leonding.ac.at"
    @State var adress = "Limesstraße 12-14"
    @State var tel = "+43 12334556"
    @State var userValues = ["Ema Halilovic", "ema.halilovic@htl-leonding.ac.at", "Limesstraße 12-14", "+43 12334556"]
    var fields = ["Name", "E-Mail", "Adresse", "Telefon"]
    
    var body: some View {
        NavigationView{
            Form{
                Section{
                    ForEach (0..<fields.count) { i in
                        HStack{
                            Text(fields[i])
                                .foregroundColor(.gray)
                            Spacer()
                            Text(userValues[i])
                        }
                        .lineLimit(1)
                    }
                } header: {
                    Text("persönliche informationen")
                }
                
                Section{
                    HStack {
                        Text("Unternehmen")
                        Spacer()
                        Text("Desking")
                    }

                } header: {
                    Text("unternehmen")
                } footer: {
                    Text("diese Informationen können nur von Vorgesetzten geändert werden")
                }
                
                Section{
                    HStack {
                        Text("Version").foregroundColor(.gray)
                        Spacer()
                        Text("1.0.0")
                    }
                } header: {
                    Text("App")
                }
//                Section {
//                    Button(action: {
//                        print("ij")
//                    }) {
//                        HStack{
//                            Image(systemName: "pencil")
//                            Text("Eintellungen ändern")
//                        }
//                    }
//                }
            }
            .navigationBarTitle("Einstellungen")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
