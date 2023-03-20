//
//  SettingsEditView.swift
//  DeskingSwiftUI
//
//  Created by Ema xd on 05.10.22.
//

import SwiftUI

struct SettingsEditView: View {
    @ObservedObject var generalVM: GeneralViewModel
    
    @State var savedState: String
    @State var toEdit: String
    var body: some View {
        NavigationView {
            Form {
                TextField("\(toEdit)", text: $savedState)
            }
            .navigationBarTitle("Settings")
        }
    }
}

//struct SettingsEditView_Previews: PreviewProvider {
//    static var previews: some View {
//        SettingsEditView(savedState: "Username", toEdit: "Ema")
//    }
//}
