//
//  Nought.swift
//  TicTacToe
//
//  Created by Ganesh on 11/04/23.
//

import SwiftUI

struct Nought: View{
    var body: some View{
        Circle()
            .stroke(.red,lineWidth: 10)
    }
}

struct Nought_Previews: PreviewProvider {
    static var previews: some View {
        Nought()
    }
}
