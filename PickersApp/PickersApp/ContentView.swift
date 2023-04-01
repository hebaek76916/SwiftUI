//
//  ContentView.swift
//  PickersApp
//
//  Created by ganeshrajugalla on 01/04/23.
//

import SwiftUI

struct ContentView: View {
    @State private var choice = 0
    @State private var showText = false
    @State private var transitModes = ["Bike","Car", "Bus"]
    @State private var sliderVal:Float = 0
    @State private var stepVal = 0
    @State private var gameTime = Date()
    var body: some View {
        Form{
            //picker
            Section{
                Picker("Transit Modes", selection: $choice) {
                    ForEach(0..<transitModes.count) { index in
                        Text("\(transitModes[index])")
                    }.pickerStyle(.segmented)
                    Text("Current Choice: \(transitModes[choice])")
                }
            }
            // toggle
            Section{
                Toggle(isOn: $showText){
                    Text("Toggle is on")
                }
                if showText{
                    Text("The Text Toggle is on")
                }
            }
            // slider
            Section{
                Slider(value: $sliderVal, in: 1...10,step: 0.0001)
                    Text("Slider Current Value: \(sliderVal,specifier: "%.1f")")
            }
            
            // stepper
            Section{
                Stepper("Stepper", value: $stepVal, in: 0...5)
                    Text("Stepper Current Value: \(stepVal)")
            }
            // date picker
            Section{
                DatePicker("Please Select Date", selection: $gameTime)
            }
            
            //sligtly modified date picker
            Section{
                DatePicker("Please Select Date", selection: $gameTime, in: Date()...)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
