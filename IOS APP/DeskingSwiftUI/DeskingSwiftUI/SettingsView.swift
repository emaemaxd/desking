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
    
    var body: some View {
        NavigationView{
            Form{
                Section{
                    HStack(spacing: 25) {
                        Text("Name").foregroundColor(.gray)
                        
                        TextField("Username", text: $name)
//                        Spacer()
//                        Picker(name, selection: $name){
//                            SettingsEditView(savedState: "Ema Halilovic", toEdit: "Username")
//                        }
                    }
                    
                    HStack(spacing: 20) {
                        Text("E-Mail").foregroundColor(.gray)
                        TextField("E-Mail", text: $email)
                    }
                    .lineLimit(1)
                    
                    HStack {
                        Text("Adresse").foregroundColor(.gray)
                        TextField("Adresse", text: $adress)
                    }
                    .lineLimit(1)
                    
                    HStack(spacing: 15) {
                        Text("Telefon").foregroundColor(.gray)
                        TextField("Telefon", text: $tel)
                    }
                    .lineLimit(1)
                } header: {
                    Text("persönliche informationen")
                }
                
                Section{
                    HStack {
                        Text("Unternehmen")
                        Spacer()
                        Text("Desking GmbH")
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
                    Text("app")
                }
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
