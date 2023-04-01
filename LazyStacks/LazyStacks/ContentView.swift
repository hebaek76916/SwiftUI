//
//  ContentView.swift
//  LazyStacks
//
//  Created by ganeshrajugalla on 01/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            ScrollView(.horizontal){
                LazyHStack{
                    ForEach(1...10000,id: \.self){ item in
                        ListRow(id: item, type: "Horizontal")
                    }
                }
            }
            .frame(height: 100,alignment: .center)
            ScrollView{
                LazyVStack{
                    ForEach(1...10000,id: \.self){ item in
                        ListRow(id: item, type: "Vertical")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ListRow: View{
    let id:Int
    let type: String
    init(id: Int, type: String) {
        self.id = id
        self.type = type
    }
    var body: some View{
        Text("\(type) \(id)")
            .padding()
    }
    
}
