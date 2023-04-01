//
//  ContentView.swift
//  TheStacks
//
//  Created by Ganesh Raju Galla on 01/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("VStack item 1")
            Text("VStack item 2")
            Spacer()
            Text("VStack item 3")
            Divider()
            HStack{
                Text("Item 1")
                    .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .topLeading)
                Text("HStack item 2")
                    .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .topLeading)
                Text("Hstack item 3")
            }
            .background(.red)
            ZStack{
                Text("ZStack item 1")
                    .padding()
                    .background(.green)
                    .opacity(0.8)
                Text("ZStack item 2")
                    .padding()
                    .background(.green)
                    .offset(x:80,y: -400)
            }
        }
        .background(.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
