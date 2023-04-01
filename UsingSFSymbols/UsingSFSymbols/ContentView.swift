//
//  ContentView.swift
//  UsingSFSymbols
//
//  Created by ganeshrajugalla on 01/04/23.
//

import SwiftUI

struct ContentView: View {
    @State private var wifiOn:Bool = false
    
    var body: some View {
        VStack {
            HStack{
                Image(systemName: "c")
                Image(systemName: "o")
                Image(systemName: "o")
                Image(systemName: "k")
            }
            .symbolVariant(.fill.circle)
            .foregroundStyle(.yellow, .blue)
            .font(.title)
            
            HStack{
                Image(systemName: "b.circle.fill")
                Image(systemName: "o.circle.fill")
                    .foregroundColor(.red)
                Image(systemName: "o.circle.fill")
                    .imageScale(.large)
                Image(systemName: "k.circle.fill")
                    .accessibilityIdentifier("Letter K")
            }.foregroundColor(.blue)
                .font(.title)
                .padding()
            
            HStack{
                Image(systemName: "allergens")
                Image(systemName: "ladybug")
            }.symbolVariant(.fill)
                .symbolRenderingMode(.multicolor)
                .font(.largeTitle)
            
            Toggle(isOn: $wifiOn){
                Label("Wifi", image: "wifi")
            }.foregroundStyle(wifiOn ? .blue : .secondary)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
