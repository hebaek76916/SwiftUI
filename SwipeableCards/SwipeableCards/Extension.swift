//
//  Extension.swift
//  SwipeableCards
//
//  Created by Ganesh on 23/04/23.
//

import Foundation
import SwiftUI

extension Array where Element == User{
    var maxId: Int {map { $0.id}.max() ?? 0}
    func cardOffset(userId:Int) -> Double{
        Double(count - 1 - userId) * 8.0
    }
    
    func cardWidth(in geometry: GeometryProxy,userId: Int) -> Double{
        geometry.size.width - cardOffset(userId: userId)
    }
}


extension DragGesture.Value{
    func percentage(in geometry: GeometryProxy) -> Double{
        abs(translation.width/geometry.size.width)
    }
}
