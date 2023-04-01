//
//  ContentView.swift
//  MoreViewsAndControls
//
//  Created by ganeshrajugalla on 01/04/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var progress = 0.5
    @State private var color = Color.red
    @State private var secondColor = Color.yellow
    @State private var someText = "Intial View"
    var body: some View {
        List{
            // progress view
            Section(header: Text("Progress Views")) {
                ProgressView("DownLoading", value: progress,total: 2)
                Button("More") {
                    if (progress < 2){
                        progress += 0.5
                    }
                }
            }
            
            //Labels
            Section(header: Text("Labels")) {
                Label("Slow", systemImage: "tortoise.fill")
                Label{
                   Text("Fast")
                        .font(.title)
                }icon: {
                    Circle()
                        .fill(Color.orange)
                        .frame(width: 40,height: 20,alignment: .center)
                        .overlay(Text("F"))
                }
            }
            
            //ColorPicker
            Section(header: Text("ColorPicker")) {
                ColorPicker(selection: $color ){
                    Text("Pick my background")
                        .background(color)
                        .padding()
                }
                ColorPicker("Picker", selection: $secondColor)
            }
            
            //TextEditor
            Section(header: Text("TextEditor")) {
                TextEditor(text: $someText)
                Text("Text editor text: \(someText)")
            }
            
            //Menu
            Section(header: Text("Menu")) {
                Menu("Actions") {
                    Button("Set Text editor text to magic") {
                        someText = "magic"
                    }
                    Button("Turn first picker green") {
                        color = Color.green
                    }
                    
                }
            }
        }
        .listStyle(.grouped)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
