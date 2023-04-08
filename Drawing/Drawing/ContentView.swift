//
//  ContentView.swift
//  Drawing
//
//  Created by Ganesh on 08/04/23.
//

import SwiftUI

struct Line{
    var points:[CGPoint]
}

struct ContentView: View {
    @State private var lines: [Line] = []
    var body: some View {
        Canvas{ ctx, size in
            for line in lines{
                var path = Path()
                path.addLines(line.points)
                ctx.stroke(path, with: .color(.red), style: StrokeStyle(lineWidth: 5,lineCap: .round,lineJoin: .round))
            }
        }
        .gesture(DragGesture(minimumDistance: 0,coordinateSpace: .local)
            .onChanged{ value in
                let position = value.location
                if value.translation == .zero{
                    lines.append(Line(points: [position]))
                }else{
                    guard let lastdx = lines.indices.last else {
                        return
                    }
                    lines[lastdx].points.append(position)
                }
            }
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
