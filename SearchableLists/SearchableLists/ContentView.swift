//
//  ContentView.swift
//  SearchableLists
//
//  Created by ganeshrajugalla on 01/04/23.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText = ""
    let messages = [
    "Dad, can you lend me money?",
    "Nada. Does money grow on trees?",
    "What is money made out of?",
    "Paper",
    "Where does paper come from?",
    "Huh....."]
    
    var body: some View {
        
        var searchResults:[String]{
            if searchText.isEmpty{
                return messages
            }else{
                return messages.filter{$0.lowercased().contains(searchText.lowercased())}
            }
        }
      
        NavigationView {
            List{
                ForEach(searchResults,id: \.self){ msg in
                    Text(msg)
                    
                }
            }
            .searchable(text: $searchText)
            .navigationBarTitle("Order number", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
