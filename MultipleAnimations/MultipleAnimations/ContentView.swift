//
//  ContentView.swift
//  MultipleAnimations
//
//  Created by Ganesh on 19/04/23.
//

import SwiftUI

struct ContentView: View {
    @State private var initialState: Bool = true
    var body: some View {
        VStack(spacing: 20) {
            Rectangle()
                .fill(initialState ? .blue : .red)
                .cornerRadius(initialState ? 50 : 0)
                .offset(y: initialState ? 0 : -200)
                .rotation3DEffect(initialState ? .degrees(0) : .degrees(45), axis: (x: 1, y: 0, z: 0))
                .animation(.easeOut(duration: 2), value: initialState)
                .scaleEffect(initialState ? 1 : 0.8)
                .rotationEffect(initialState ? Angle(degrees: 0) : Angle(degrees: -90))
                .animation(.linear(duration: 1), value: initialState)
            Button {
                initialState.toggle()
            } label: {
                Text("Animate")
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .padding()
                    .background(.green)
                    .cornerRadius(5)
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
