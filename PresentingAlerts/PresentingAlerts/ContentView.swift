//
//  ContentView.swift
//  PresentingAlerts
//
//  Created by ganeshrajugalla on 06/04/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showSubmitAlert = false
    var body: some View {
        Button("Show Alert") {
            showSubmitAlert = true
        }
        
        .alert("Confirm Actions", isPresented: $showSubmitAlert) {
            Button("Ok", role: .cancel, action: {})
        } message: {
            Text("Are you sure you want to submit the form")
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
