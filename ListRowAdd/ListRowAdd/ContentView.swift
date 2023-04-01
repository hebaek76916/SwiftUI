//
//  ContentView.swift
//  ListRowAdd
//
//  Created by ganeshrajugalla on 01/04/23.
//

import SwiftUI

struct ContentView: View {
    @State private var numbers = [1,2,3,4]
    var body: some View {
        NavigationView {
            List{
                ForEach(numbers,id: \.self){ num in
                    Text("\(num)")
                }
            }
            .navigationBarTitle("Number List", displayMode: .inline)
            .navigationBarItems(trailing: Button("Add", action: addItemToRow))
        }
    }
    
    private func addItemToRow(){
        numbers.append(Int.random(in: 5...100))
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
