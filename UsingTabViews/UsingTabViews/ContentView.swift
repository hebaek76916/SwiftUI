//
//  ContentView.swift
//  UsingTabViews
//
//  Created by ganeshrajugalla on 04/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            
            CurrenciesView()
                .tabItem {
                    Label("Currencies", systemImage: "coloncurrencysign.circle.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
