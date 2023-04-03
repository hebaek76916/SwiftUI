//
//  ContentView.swift
//  FocusAndSubmit
//
//  Created by ganeshrajugalla on 03/04/23.
//

import SwiftUI

struct ContentView: View {
    enum AddressFields{
        case streetname
        case city
        case state
        case zipcode
    }
    @State private var streetname = ""
    @State private var city = ""
    @State private var state = ""
    @State private var zipcode = ""
    @FocusState private var currentFocus : AddressFields?
    var body: some View {
        VStack{
            TextField("Address", text: $streetname)
                .focused($currentFocus, equals: .streetname)
                .submitLabel(.next)
            TextField("City", text: $city)
                .focused($currentFocus, equals: .city)
                .submitLabel(.next)
            TextField("State", text: $state)
                .focused($currentFocus, equals: .state)
                .submitLabel(.next)
            TextField("Zipcode", text: $zipcode)
                .focused($currentFocus, equals: .zipcode)
                .submitLabel(.done)
        }
        .onSubmit {
            switch currentFocus {
            case .streetname:
                currentFocus = .city
            case .city:
                currentFocus = .state
            case .state:
                currentFocus = .zipcode
            default:
                print("Thanks for sumbmit")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


