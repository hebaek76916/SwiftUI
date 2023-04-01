//
//  Greetings.swift
//  AddSwiftUIToUIKit
//
//  Created by ganeshrajugalla on 01/04/23.
//

import SwiftUI

struct Greetings: View {
    var textFromUIKit = ""
    var body: some View {
        Text(textFromUIKit)
    }
}

struct Greetings_Previews: PreviewProvider {
    static var previews: some View {
        Greetings()
    }
}
