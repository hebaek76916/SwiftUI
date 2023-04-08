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
                .stroke(.orange,lineWidth: 25)
            RoundedRectangle(cornerRadius: 20)
                .fill(.red)
            Capsule(style: .continuous)
                .fill(.green)
                .frame(height: 100)
            Capsule(style: .circular)
                .fill(.yellow)
                .frame(height: 100)
            Circle()
                .strokeBorder(.blue,lineWidth: 15)
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
