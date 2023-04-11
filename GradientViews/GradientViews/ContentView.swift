//
//  ContentView.swift
//  GradientViews
//
//  Created by Ganesh on 12/04/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedGradient = 0
    @ViewBuilder var content: some View{
        switch selectedGradient{
        case 0:
            LinearGradientView()
        case 1:
            RadialGradientView()
      default:
            AngularGradientView()
        }
    }
    
    var body: some View {
      content
            .edgesIgnoringSafeArea(.all)
        Picker(selection: $selectedGradient) {
            Text("Liner").tag(0)
            Text("Radial").tag(1)
            Text("Angular").tag(2)
        } label: {
            Text("Select Gradient")
        }
        .pickerStyle(.segmented)
        .padding(.horizontal,32)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
