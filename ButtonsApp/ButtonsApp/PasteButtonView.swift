//
//  PasteButtonView.swift
//  ButtonsApp
//
//  Created by ganeshrajugalla on 01/04/23.
//

import SwiftUI

struct PasteButtonView: View {
    
    @State private var text = String()
    var body: some View {
        VStack{
            Text("Paste Buttons how you paste in macOS but not in iOS")
                .padding()
        }
        .navigationBarTitle("Paste Buttons", displayMode: .inline)
    }
}

struct PasteButtonView_Previews: PreviewProvider {
    static var previews: some View {
        PasteButtonView()
    }
}
