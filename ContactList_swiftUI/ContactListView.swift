//
//  ContactListView.swift
//  ContactList_swiftUI
//
//  Created by Aleksandr Mamlygo on 24.07.23.
//

import SwiftUI

struct ContactListView: View {
    let contacts: [Person]
    
    var body: some View {
        NavigationView {
            List(contacts) { person in
                NavigationLink(
                    person.fullName,
                    destination: ContactDetailsView(contact: person)
                )
            }
            .navigationTitle("Contacts List")
        }
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(contacts: Person.getPeople())
    }
}
