//
//  ContentView.swift
//  MovingListRows
//
//  Created by ganeshrajugalla on 01/04/23.
//

import SwiftUI

struct ContentView: View {
    @State var countries = ["USA", "Canada","England", "Cameroon", "South Africa", "Mexico" ,"Japan", "South Korea"]
    var body: some View {
        NavigationView {
            List{
                ForEach(countries,id: \.self){ country in
                    Text(country)
                }.onMove(perform: moveRow)
            }
            .navigationBarTitle("Countries", displayMode: .inline)
            .navigationBarItems(trailing: EditButton())
        }
    }
    
    private func moveRow(source: IndexSet,destination:Int){
        countries.move(fromOffsets: source, toOffset: destination)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
