//
//  ContentView.swift
//  TabViewWithGestures
//
//  Created by ganeshrajugalla on 04/04/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selecetdTab = 0
    var body: some View {
        TabView(selection: $selecetdTab) {
            Text("Left Tab. Click to switch to right")
                .onTapGesture {
                    self.selecetdTab = 1
                }
                .tabItem {
                    Label("Left", image: "l.circle.fill")
                }.tag(0)
            
            Text("Right Tab. Click to switch to left")
                .onTapGesture {
                    self.selecetdTab = 0
                }
                .tabItem {
                    Label("Right", image: "r.circle.fill")
                }.tag(1)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
