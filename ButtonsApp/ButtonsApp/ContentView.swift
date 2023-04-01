//
//  ContentView.swift
//  ButtonsApp
//
//  Created by ganeshrajugalla on 01/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack{
                NavigationLink(destination: ButtonView()) {
                    Text("Buttons")
                }
                
                NavigationLink(destination: EditButtonView()) {
                    Text("Edit Buttons")
                        .padding()
                }
                
                NavigationLink(destination: MenuButtonView()) {
                    Text("Menu Buttons")
                        .padding()
                }
                
                NavigationLink(destination: PasteButtonView()) {
                    Text("Paste Buttons")
                        .padding()
                }
                
                NavigationLink(destination: Text("Very long text that should not be displayed in a single line because it is not good design").padding().navigationBarTitle(Text("Detail"))) {
                    Text(" Detail about text")
                        .padding()
                }
            }
            .navigationBarTitle(Text("Main View"), displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
