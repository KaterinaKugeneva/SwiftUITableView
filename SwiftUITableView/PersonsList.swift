//
//  PersonsList.swift
//  SwiftUITableView
//
//  Created by Ekaterina Kugeneva on 04.02.2022.
//

import SwiftUI

struct PersonsList: View {
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            VStack {
                
                /*List {
                    ForEach(persons, id: \.self) { person in
                        HStack{
                         Text(person.firstname)
                         Text(person.lastname)
                        }
                    }
                }*/
                
                List(persons) { person in
                                NavigationLink(destination: DetailsView(person:  person)) {
                                    VStack(alignment: .leading){
                                        Text(person.fullName)
                                    }
                                }
                            }
            }
            .navigationTitle ("Contact list")
        }
            
    }
}

struct PersonsList_Previews: PreviewProvider {
    static var previews: some View {
        PersonsList(persons: Person.createList())
    }
}
