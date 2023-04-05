//
//  ContentView.swift
//  DisplayingContextMenus
//
//  Created by ganeshrajugalla on 06/04/23.
//

import SwiftUI

struct ContentView: View {
    @State private var bulbColor = Color.red
    var body: some View {
       Image(systemName: "lightbulb.fill")
            .font(.system(size: 60))
            .foregroundColor(bulbColor)
            .contextMenu{
                Button("Yello Bulb") {
                    bulbColor = .yellow
                }
                
                Button("Blue Bulb") {
                    bulbColor = .blue
                }
                
                Button("Green Bulb") {
                    bulbColor = .green
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
