//
//  ContentView.swift
//  TodoList
//
//  Created by ganeshrajugalla on 02/04/23.
//

import SwiftUI

struct ContentView: View {
    @State var t = tasks
    var body: some View {
        TaskListView(tasks: $t)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
