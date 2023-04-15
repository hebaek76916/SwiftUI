//
//  ContentView.swift
//  AnimateTriangleShape
//
//  Created by Ganesh on 15/04/23.
//

import SwiftUI

struct ContentView: View {
    @State
    var multiplier = 1.0
    var body: some View {
        Triangle(multiplier: multiplier)
            .fill(.red)
            .frame(width: 300, height: 300)
            .onTapGesture {
                withAnimation(.spring()) {
                    multiplier = .random(in: 0.3...1.5)
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
