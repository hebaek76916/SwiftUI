//
//  TaskListView.swift
//  TodoList
//
//  Created by ganeshrajugalla on 02/04/23.
//

import SwiftUI

struct TaskListView: View {
    @Binding var tasks:[Task]
    var body: some View {
        NavigationView {
            List{
                ForEach($tasks){ task in
                    TaskView(task: task)
                }
            }.navigationTitle(Text("To do list"))
        }
    }
}

struct TaskListView_Previews: PreviewProvider {
    @State static var t = tasks
    static var previews: some View {
        TaskListView(tasks:$t)
    }
}
