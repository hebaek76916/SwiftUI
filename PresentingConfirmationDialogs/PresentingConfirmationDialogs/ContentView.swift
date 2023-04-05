//
//  ContentView.swift
//  PresentingConfirmationDialogs
//
//  Created by ganeshrajugalla on 06/04/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showDialog = false
    var title = "Confirmation Dialog"
    var body: some View {
        Button("Present Confirmation Dialog") {
            showDialog = true
        }
        
        .confirmationDialog(title, isPresented: $showDialog) {
            Button("Dismiss Dialog") {
                // disssmiss here
            }
            Button("Save") {
                // save here
            }
            Button("Cancel", role: .cancel, action: {})
            Button("Print Something to console") {
                print("Print something in console")
            }
        } message: {
            Text("""
            Use Dialogs to give users alternatives for
            completing a task
            """)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
