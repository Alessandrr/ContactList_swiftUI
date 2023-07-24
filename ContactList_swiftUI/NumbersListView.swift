//
//  NumbersListView.swift
//  ContactList_swiftUI
//
//  Created by Aleksandr Mamlygo on 24.07.23.
//

import SwiftUI

struct NumbersListView: View {
    let contacts: [Person]
    
    var body: some View {
        NavigationView {
            List(contacts, id: \.self) { contact in
                Section(contact.fullName) {
                    DetailsRowView(detailType: .phone, detailContent: contact.phoneNumber)
                    DetailsRowView(detailType: .eMail, detailContent: contact.eMail)
                }
            }
            .navigationTitle("Detailed contacts")
        }
    }
}

struct NumbersListView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersListView(contacts: Person.getPeople())
    }
}
