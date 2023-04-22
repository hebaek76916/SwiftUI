//
//  ContentView.swift
//  HeroViewTransition
//
//  Created by Ganesh on 22/04/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedItem:Item!
    @State private var showDetail:Bool = false
    @Namespace var animation
    var body: some View {
        ZStack{
            DestinationListView(selectedItem: $selectedItem, showDetail: $showDetail, animation: animation)
                .opacity(showDetail ? 0 : 1)
            
            if showDetail{
                DestinationDetailView(selectedItem: selectedItem, showDetail: $showDetail, animation: animation)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
