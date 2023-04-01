//
//  ContentView.swift
//  WeScroll
//
//  Created by ganeshrajugalla on 01/04/23.
//

import SwiftUI

struct ContentView: View {
    let letters = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p"]
    var body: some View {
        VStack {
            ScrollView(showsIndicators: false){
                ForEach(letters, id: \.self) { letter in
                    Image(systemName: letter)
                        .foregroundColor(.yellow)
                        .font(.largeTitle)
                        .background(.blue)
                        .frame(width: 50,height: 50)
                        .symbolVariant(.circle.fill)
                }
            }
            .frame(width: 50,height: 200)
            
            ScrollView(.horizontal,showsIndicators: false){
                HStack{
                    ForEach(letters,id: \.self){ letter in
                        Image(systemName: letter)
                            .font(.largeTitle)
                            .foregroundColor(.yellow)
                            .background(.blue)
                            .frame(width: 50,height: 50)
                            .symbolVariant(.circle.fill)
                    }
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
