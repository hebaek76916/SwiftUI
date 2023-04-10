//
//  Row.swift
//  TicTacToe
//
//  Created by Ganesh on 11/04/23.
//

import SwiftUI

struct Row: View {
    @Binding var isNextNought: Bool
    var body: some View {
        HStack{
            Cell(isNextNought: $isNextNought)
            Cell(isNextNought: $isNextNought)
            Cell(isNextNought: $isNextNought)
        }
    }
}

struct Row_Previews: PreviewProvider {
    static var previews: some View {
        Row(isNextNought: .constant(true))
    }
}
