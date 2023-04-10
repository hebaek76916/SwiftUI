//
//  Cross.swift
//  TicTacToe
//
//  Created by Ganesh on 11/04/23.
//

import SwiftUI

struct Cross: View{
    var body: some View{
        CrossShape()
            .stroke(.green,style: StrokeStyle(lineWidth: 10,lineCap: .round,lineJoin: .round))
    }
}

struct Cross_Previews: PreviewProvider {
    static var previews: some View {
        Cross()
    }
}

struct CrossShape: Shape{
    func path(in rect: CGRect) -> Path {
        Path(){ path in
            path.move(to: CGPoint(x: rect.minX, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
            path.move(to: CGPoint(x: rect.maxX, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        }
    }
}
