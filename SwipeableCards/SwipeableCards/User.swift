//
//  User.swift
//  SwipeableCards
//
//  Created by Ganesh on 23/04/23.
//

import Foundation
import SwiftUI

struct User: Identifiable,Equatable{
    var id:Int
    var firstName: String
    var lastName: String
    var start: Color
    var end: Color
}
