//
//  UserProfiles.swift
//  SwiftUITableView
//
//  Created by Ekaterina Kugeneva on 04.02.2022.
//
import SwiftUI

struct UserProfiles: View {
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List{
                ForEach(persons) { person in
                    Section(header: Text("\(person.fullName)")) {
                        HStack{
                            Image (systemName: "phone.circle").foregroundColor(.blue)
                            Text("\(person.phone) ")
                        }
                        HStack{
                            Image (systemName: "envelope.circle.fill").foregroundColor(.blue)
                            Text("\(person.email)")
                        }
                    }
                }
            }
            .navigationTitle("Contact list")
            
        }
    }
}

struct UserProfiles_Previews: PreviewProvider {
    static var previews: some View {
        UserProfiles(persons: Person.createList())
    }
}
