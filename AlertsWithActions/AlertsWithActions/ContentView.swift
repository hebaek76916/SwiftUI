//
//  ContentView.swift
//  AlertsWithActions
//
//  Created by ganeshrajugalla on 06/04/23.
//

import SwiftUI

struct ContentView: View {
    @State private var changeText = false
    @State private var displayText = "Tap to change Text"
    var body: some View {
        Button(displayText) {
            changeText = true
        }
        .alert("ChangingText", isPresented: $changeText) {
            Button("Yes") {
                displayText = displayText == "Stay Hungry" ? "Stay Foolish" : "Stay Hungry"
            }
            Button("Do Nothing", action: {})
        } message: {
            Text("Do you want to toggle the text?")
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
