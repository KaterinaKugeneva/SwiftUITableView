//
//  ContentView.swift
//  SwiftUITableView
//
//  Created by Ekaterina Kugeneva on 04.02.2022.
//

import SwiftUI

struct ContentView: View {
    let persons = Person.createList()
    
    var body: some View {
        TabView {
            PersonsList(persons: persons)
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Contacts")
                }
            UserProfiles(persons: persons)
                .tabItem {
                    Image(systemName: "phone.circle")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
