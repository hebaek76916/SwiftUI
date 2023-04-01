//
//  MenuButtonView.swift
//  ButtonsApp
//
//  Created by ganeshrajugalla on 01/04/23.
//

import SwiftUI

struct MenuButtonView: View {
    var body: some View {
        Text("Menu Buttons are currently available on MacOS")
            .padding()
            .navigationBarTitle("Menu Buttons", displayMode: .inline)
    }
}

struct MenuButtonView_Previews: PreviewProvider {
    static var previews: some View {
        MenuButtonView()
    }
}
