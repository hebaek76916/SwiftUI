//
//  ContentView.swift
//  UIKitToSwiftUI
//
//  Created by ganeshrajugalla on 01/04/23.
//

import SwiftUI

struct ContentView: View {
    @State var animate:Bool = false
    var body: some View {
        VStack {
            ActivityIndicator(animating: animate)
            Toggle(isOn: $animate) {
                Text("Toggle Activity")
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
