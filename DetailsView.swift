//
//  DetailsView.swift
//  SwiftUITableView
//
//  Created by Ekaterina Kugeneva on 04.02.2022.
//

import SwiftUI

struct DetailsView: View {
    let person: Person
    
    var body: some View {
        List{
            Image (systemName: "person").resizable()
                .frame(width: 200, height: 200)
                .padding(.leading, 65)
            HStack{
                Image (systemName: "phone.circle").foregroundColor(.blue)
                Text("\(person.phone) ")
            }
            HStack{
                Image (systemName: "envelope.circle.fill").foregroundColor(.blue)
                Text("\(person.email)")
            }
        }
            .navigationBarTitle(Text("\(person.fullName)"), displayMode: .large)
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(person: Person.init(id:1, firstname: "1", lastname: "vvv", email: "33ddd", phone: "12345"))
    }
}
