//
//  DataModel.swift
//  SwiftUITableView
//
//  Created by Ekaterina Kugeneva on 04.02.2022.
//

import Foundation

struct Person: Hashable, Identifiable {
    let id : Int
    let firstname: String
    let lastname: String
    let email: String
    let phone: String
    var fullName: String {
        "\(firstname) \(lastname)"
    }
    
    
    static func createList() -> [Person] {
        var persons: [Person] = []
        
        let names = DataManager.human.names.shuffled()
        let lastnames = DataManager.human.lastnames.shuffled()
        let emails = DataManager.human.emails.shuffled()
        let phones = DataManager.human.phones.shuffled()
        
        for index  in 0 ... names.count - 1 {
            let human = Person (id : index,
                                firstname: names[index],
                                lastname: lastnames[index],
                                email: emails[index],
                                phone: phones[index]
                                )
            persons.append(human)
        }
        return persons
    }
}
