//
//  ContentView.swift
//  BannerWithASpringAnimation
//
//  Created by Ganesh on 15/04/23.
//

import SwiftUI

struct ContentView: View {
    @State private var show = false
    var body: some View {
        VStack {
            BannerView(message: "SWiftUI", show: show)
            Button {
                show.toggle()
            } label: {
                Text(show ? "Hide" : "Show")
                    .padding()
                    .frame(width: 100)
                    .foregroundColor(.white)
                    .background(show ? .red : .blue)
                    .cornerRadius(10)
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
