//
//  Cell.swift
//  TicTacToe
//
//  Created by Ganesh on 11/04/23.
//

import SwiftUI

struct Cell: View{
    enum CellType{
        case hidden
        case nough
        case cross
    }
    
    @State private var cellType:CellType = .hidden
    @Binding var isNextNought: Bool
    
    @ViewBuilder
    private var content: some View{
        switch cellType {
        case .hidden:
            Color.clear
        case .nough:
            Nought()
        case .cross:
            Cross()
        }
    }
    
    var body: some View{
        content
            .padding(20)
            .contentShape(Rectangle())
            .onTapGesture {
                guard cellType == .hidden else{
                    return
                }
                cellType = isNextNought ? .nough : .cross
                isNextNought.toggle()
            }
    }
}

struct Cell_Previews: PreviewProvider {
    static var previews: some View {
        Cell(isNextNought: .constant(true))
    }
}
