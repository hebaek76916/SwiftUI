//
//  Grid.swift
//  TicTacToe
//
//  Created by Ganesh on 11/04/23.
//

import SwiftUI

struct Grid: View {
    
    @State var isNextRought: Bool = false
    var body: some View {
        ZStack{
            GridShape()
                .stroke(.indigo,lineWidth: 15)
            VStack{
                Row(isNextNought: $isNextRought)
                Row(isNextNought: $isNextRought)
                Row(isNextNought: $isNextRought)
            }
        }
        .aspectRatio(contentMode: .fit)
    }
}

struct Grid_Previews: PreviewProvider {
    static var previews: some View {
        Grid()
    }
}


struct GridShape: Shape{
    func path(in rect: CGRect) -> Path {
        Path(){ path in
            path.move(to: CGPoint(x: rect.width/3,
            y: rect.minY))
            path.addLine(to: CGPoint(x: rect.width/3,
            y: rect.maxY))
            path.move(to: CGPoint(x: 2*rect.width/3,
            y: rect.minY))
            path.addLine(to: CGPoint(x: 2*rect.width/3,
            y: rect.maxY))
            path.move(to: CGPoint(x: rect.minX,
            y: rect.height/3))
            path.addLine(to: CGPoint(x: rect.maxX,
            y: rect.height/3))
            path.move(to: CGPoint(x: rect.minX,
            y: 2*rect.height/3))
            path.addLine(to: CGPoint(x: rect.maxX,
            y: 2*rect.height/3))
        }
    }
}
