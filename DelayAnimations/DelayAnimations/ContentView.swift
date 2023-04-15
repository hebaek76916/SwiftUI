//
//  ContentView.swift
//  DelayAnimations
//
//  Created by Ganesh on 15/04/23.
//

import SwiftUI

struct ContentView: View {
    @State private var hideFirst = true
    @State private var hideSecond = true
    @State private var hideThird = true
    var body: some View {
        VStack {
            VStack(spacing: 20) {
                Text("First")
                    .styled(color: .red)
                    .opacity(hideFirst ? 0 : 1)
                Text("Second")
                    .styled(color: .yellow)
                    .opacity(hideSecond ? 0 : 1)
                Text("Third")
                    .styled(color: .blue)
                    .opacity(hideFirst ? 0 : 1)
            }
            Spacer()
            Button {
                withAnimation(.easeOut){
                    hideFirst.toggle()
                }
                withAnimation(.easeOut.delay(0.3)){
                    hideSecond.toggle()
                }
                
                withAnimation(.easeInOut.delay(0.6)){
                    hideThird.toggle()
                }
            } label: {
                Text("Animate")
                    .fontWeight(.heavy)
                    .styled(color: .green)
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
