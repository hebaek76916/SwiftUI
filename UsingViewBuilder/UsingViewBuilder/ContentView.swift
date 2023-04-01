//
//  ContentView.swift
//  UsingViewBuilder
//
//  Created by ganeshrajugalla on 01/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            BlueCircle {
                Text("some text here")
                    Rectangle()
                    .fill(Color.red)
                    .frame(width: 40,height: 40)
            }
            BlueCircle {
                Text("Another Example")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
