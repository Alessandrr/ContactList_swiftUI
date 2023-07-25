//
//  HomeScreenView.swift
//  ContactList_swiftUI
//
//  Created by Aleksandr Mamlygo on 24.07.23.
//

import SwiftUI

struct HomeScreenView: View {
    private let contacts = Person.getPeople()
    
    var body: some View {
        TabView {
            ContactListView(contacts: contacts)
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Contacts")
                }
            NumbersListView(contacts: contacts)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
