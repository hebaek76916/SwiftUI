//
//  ContentView.swift
//  BuiltInShapes
//
//  Created by Ganesh on 08/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 10) {
            Rectangle()
                .strokeBorder(.orange,lineWidth: 25)
          RoundedRectangle(cornerRadius: 20)
                .fill(.red)
            Capsule(style: .circular)
                .fill(.green)
                .frame(height: 100)
            Capsule(style: .continuous)
                .fill(.yellow)
                .frame(height: 100)
            Circle().strokeBorder(.blue,lineWidth: 10)
            Ellipse()
                .fill(.purple)
        }
        .padding(.horizontal,20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
