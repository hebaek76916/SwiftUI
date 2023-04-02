//
//  ContentView.swift
//  DisclosureGroups
//
//  Created by ganeshrajugalla on 02/04/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showPlanet:Bool = true
    
    var body: some View {
        VStack{
            DisclosureGroup("Planets",isExpanded: $showPlanet) {
                Text("Mercury")
                Text("venus")
                DisclosureGroup("Earth") {
                    Text("North America")
                    Text("South America")
                    Text("Europe")
                    Text("Africa")
                    Text("Asia")
                    Text("Antarctica")
                    Text("Oceania")
                }
                DisclosureGroup {
                    Text("Surprise! This is an alternative way of using DisclosureGrou")
                } label: {
                    Label("Tap to reveal", systemImage: "cube.box")
                        .font(.system(size: 25, design: .rounded))
                        .foregroundColor(.blue)
                }

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
