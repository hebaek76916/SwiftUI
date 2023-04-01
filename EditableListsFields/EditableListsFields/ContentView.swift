//
//  ContentView.swift
//  EditableListsFields
//
//  Created by ganeshrajugalla on 01/04/23.
//

import SwiftUI

struct ContentView: View {
    @State private var todos = [TodoItem("Eat"),TodoItem("Sleep"),TodoItem("Code")]
    
    var body: some View {
        List($todos){ $todo in
            TextField("Numbers", text: $todo.title)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct TodoItem:Identifiable{
    let id = UUID()
    var title:String
    init(_ someTitle: String) {
        self.title = someTitle
    }
}
