//
//  ContentView.swift
//  StretchableHeader
//
//  Created by Ganesh on 22/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical,showsIndicators: false) {
            VStack{
                StretchableHeader(imageName: "header")
                ForEach(0..<6){ _ in
                    Row()
                    Divider()
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
