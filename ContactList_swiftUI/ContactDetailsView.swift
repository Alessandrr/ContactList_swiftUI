//
//  ContactDetailsView.swift
//  ContactList_swiftUI
//
//  Created by Aleksandr Mamlygo on 24.07.23.
//

import SwiftUI

struct ContactDetailsView: View {
    let contact: Person
    
    var body: some View {
        List {
            Section {
                HStack {
                    Spacer()
                    Image(systemName: "person")
                        .resizable()
                        .frame(width: 150, height: 150)
                    Spacer()
                }
                Label(contact.phoneNumber, systemImage: "phone")
                Label(contact.eMail, systemImage: "tray")
            }
        }
        .navigationTitle(contact.fullName)
    }
}

struct ContactDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailsView(contact: Person.getPerson())
    }
}
