//
//  AnimationType.swift
//  BasicAnimations
//
//  Created by Ganesh on 15/04/23.
//

import Foundation
import SwiftUI

struct AnimationType{
    var name: String
    var animation: Animation
    
    static var all: [AnimationType] = [AnimationType(name: "default", animation: .default),AnimationType(name: "easeIn", animation: .easeIn),AnimationType(name: "easeOut", animation: .easeOut),AnimationType(name: "easeInOut", animation: .easeInOut),AnimationType(name: "linear", animation: .linear),AnimationType(name: "spring", animation: .spring())]
}
