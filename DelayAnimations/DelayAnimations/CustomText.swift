//
//  CustomText.swift
//  DelayAnimations
//
//  Created by Ganesh on 15/04/23.
//

import Foundation
import SwiftUI

struct CustomText: ViewModifier{
    let foregroundColor: Color
    let backgroundColor: Color
    let cornerRadius:Double
    
    func body(content: Content) -> some View {
        content
            .foregroundColor(foregroundColor)
            .frame(width: 200)
            .background(backgroundColor)
            .padding()
            .cornerRadius(cornerRadius)
    }
}


extension Text{
    func styled(color:Color) -> some View{
        modifier(CustomText(foregroundColor: .white, backgroundColor: color, cornerRadius: 10))
    }
}
