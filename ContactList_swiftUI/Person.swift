//
//  Person.swift
//  ContactList_swiftUI
//
//  Created by Aleksandr Mamlygo on 24.07.23.
//

import Foundation

struct Person: Identifiable {
    
    let id: Int
    let firstName: String
    let secondName: String
    
    let eMail: String
    let phoneNumber: String
    
    var fullName: String {
        "\(firstName) \(secondName)"
    }
    
    static func getPeople() -> [Person] {
        let data = DataManager.shared
        
        let randomNames = data.firstNames.shuffled()
        let randomLastNames = data.lastNames.shuffled()
        let randomEmails = data.eMails.shuffled()
        let randomPhones = data.phoneNumbers.shuffled()
        
        let peopleCount = min(randomNames.count, randomLastNames.count, randomEmails.count, randomPhones.count)
        var people: [Person] = []
        
        for index in 0..<peopleCount {
            people.append(Person(
                id: index + 1,
                firstName: randomNames[index],
                secondName: randomLastNames[index],
                eMail: randomEmails[index],
                phoneNumber: randomPhones[index]
            ))
        }
        
        return people
    }
    
    //Только для Previews
    static func getPerson() -> Person {
        Person(id: 1, firstName: "Jon", secondName: "Smith", eMail: "example@manychat.com", phoneNumber: "+37441210079")
    }
}

