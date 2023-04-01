//
//  EditButtonView.swift
//  ButtonsApp
//
//  Created by ganeshrajugalla on 01/04/23.
//

import SwiftUI

struct EditButtonView: View {
    
    @State private var animals = ["Cat","Dog", "Goat"]
    
    var body: some View {
        NavigationView {
            List{
                ForEach(animals,id: \.self) { animal in
                    Text(animal)
                }.onDelete(perform: removeAniaml)
            }
            .navigationBarItems(trailing:EditButton())
            .navigationBarTitle(Text("EditButtonView"),
            displayMode: .inline)
        }
    }
    
    func removeAniaml(at offset:IndexSet){
        animals.remove(atOffsets: offset)
    }
}

struct EditButtonView_Previews: PreviewProvider {
    static var previews: some View {
        EditButtonView()
    }
}
