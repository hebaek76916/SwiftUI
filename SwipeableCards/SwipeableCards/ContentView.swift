//
//  ContentView.swift
//  SwipeableCards
//
//  Created by Ganesh on 23/04/23.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Properties
    @State private var users:[User] = [
        User(id: 0, firstName: "Mark", lastName: "Bennett", start: .red, end: .green),
        User(id: 1, firstName: "John", lastName: "Lewis", start: .green, end: .orange),
        User(id: 2, firstName: "joan", lastName: "Mince", start: .blue, end: .green),
        User(id: 3, firstName: "Liz", lastName: "Garret", start: .orange, end: .purple),
        User(id: 4, firstName: "Lola", lastName: "Pince", start: .yellow, end: .gray),
        User(id: 5, firstName: "Jim", lastName: "Beam", start: .pink, end: .yellow),
        User(id: 6, firstName: "Tom", lastName: "Waits", start: .purple, end: .blue),
        User(id: 7, firstName: "Mike", lastName: "Rooney", start: .black, end: .gray),
        User(id: 8, firstName: "Jane", lastName: "Doe", start: .red, end: .green)
    ]
    
    // MARK: - Body
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                ForEach(users) { user in
                    if user.id > users.maxId - 8{
                        CardView(user: user, onRemove: { removeUser in
                            users.removeAll{$0.id == removeUser.id}
                        })
                        .animation(.spring(),value: users)
                        .frame(width:users.cardWidth(in: geometry, userId: user.id),height: 400)
                        .offset(x:0,y:users.cardOffset(userId: user.id))
                    }
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
