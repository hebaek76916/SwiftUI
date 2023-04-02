//
//  ContentView.swift
//  DarkModePreview
//
//  Created by ganeshrajugalla on 02/04/23.
//

import SwiftUI

struct ContentView: View {
    @Environment (\.colorScheme) var deviceColorScheme
    var body: some View {
        NavigationView {
            Text(deviceColorScheme == .dark ? "Quik Jorney to the dark side" : "Back to light")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ContentView()
                .colorScheme(.dark)
            ContentView().colorScheme(.light)
        }
       
    }
}
