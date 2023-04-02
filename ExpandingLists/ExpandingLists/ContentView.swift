//
//  ContentView.swift
//  ExpandingLists
//
//  Created by ganeshrajugalla on 02/04/23.
//

import SwiftUI

struct ContentView: View {
    let bagContents = [currencies,tools]
    var body: some View {
        List(bagContents,children: \.content){ row in
            Image(systemName: row.icon)
            Text(row.name)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct BackPack: Identifiable{
    var id = UUID()
    var name:String
    var icon: String
    var content: [BackPack]?
}

let dollar = BackPack(name: "Dollar", icon: "dollarsign.circle")
let yen = BackPack(name: "Yen", icon: "yensign.circle")
let currencies = BackPack(name: "Currencies",icon:"coloncurrencysign.circle", content: [dollar, yen])

let pencil = BackPack(name: "Pencil", icon: "pencil.circle")
let hammer = BackPack(name: "Hammer", icon: "hammer")
let paperClip = BackPack(name: "Paperclip", icon: "paperclip")
let glass = BackPack(name: "Magnify glass", icon: "magnifyingglass")
let bin = BackPack(name: "Bin", icon: "arrow.up.bin",content: [paperClip,glass])
let tools = BackPack(name: "Tools", icon: "folder",content: [pencil,hammer,bin])

