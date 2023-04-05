//
//  ContentView.swift
//  DisplayingPopovers
//
//  Created by ganeshrajugalla on 06/04/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showPopover = false
    var body: some View {
        Button("Show PopOver") {
            showPopover = true
        }
        .font(.system(size: 40))
        .popover(isPresented: $showPopover,arrowEdge: .bottom) {
            Text("PopOver Content displayed here")
                .font(.system(size: 40))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
