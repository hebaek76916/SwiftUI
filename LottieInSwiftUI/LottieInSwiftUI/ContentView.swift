//
//  ContentView.swift
//  LottieInSwiftUI
//
//  Created by Ganesh on 22/04/23.
//

import SwiftUI

struct ContentView: View {
    @State private var play: Bool = false
    var body: some View {
        ZStack{
            Color.yellow
                .ignoresSafeArea(.all)
            VStack{
                LottieView(play: $play)
                Button {
                    play = true
                } label: {
                    Text("Fill me!")
                        .fontWeight(.heavy)
                        .padding(15)
                        .background(.white)
                        .cornerRadius(10)
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
