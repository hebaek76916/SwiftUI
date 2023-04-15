//
//  Triangle.swift
//  AnimateTriangleShape
//
//  Created by Ganesh on 15/04/23.
//

import Foundation
import SwiftUI


struct Triangle: Shape{
    
    var multiplier: CGFloat
    var animatableData: CGFloat {
    get { multiplier }
    set {
        multiplier = newValue
        print("newValue \(newValue)")
    }
    }
    
    func path(in rect: CGRect) -> Path {
        Path(){ path in
            path.move(to: CGPoint(x: rect.minX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY - multiplier * rect.width))
        }
    }
    
    
}
