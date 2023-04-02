//
//  ContentView.swift
//  PreviewingInNavigationView
//
//  Created by ganeshrajugalla on 02/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack{
                NavigationLink(destination: SecondView(someText: "Sample Text")) {
                    Text("Go to second view")
                        .foregroundColor(.white)
                        .padding()
                        .background(.black)
                        .cornerRadius(25)
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
