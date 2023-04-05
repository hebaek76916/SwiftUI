//
//  ContentView.swift
//  PresentingSheets
//
//  Created by ganeshrajugalla on 06/04/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showSheet = false
    @State private var showWithNav = false
    var body: some View {
        VStack {
            Button("Display Sheet") {
                showSheet = true
            }
            .sheet(isPresented: $showSheet) {
                sheetView()
            }
            
            Button("SheetWithNav") {
                showWithNav = true
            }
            .sheet(isPresented: $showWithNav) {
                SheetWithNavView(showWithNav: $showWithNav)
            }
        }
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
