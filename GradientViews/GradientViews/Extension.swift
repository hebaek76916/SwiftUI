//
//  Extension.swift
//  GradientViews
//
//  Created by Ganesh on 12/04/23.
//

import Foundation
import SwiftUI

extension Text{
    func bigLight() -> some View{
        font(.system(size: 80))
            .fontWeight(.thin)
            .multilineTextAlignment(.center)
            .foregroundColor(.white)
    }
}
