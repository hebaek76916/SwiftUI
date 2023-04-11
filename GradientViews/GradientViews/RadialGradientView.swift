//
//  RadialGradientView.swift
//  GradientViews
//
//  Created by Ganesh on 12/04/23.
//

import SwiftUI

struct RadialGradientView: View {
    var body: some View {
        ZStack{
            RadialGradient(gradient: Gradient(colors: [.orange,.green,.blue,.black]), center: .center, startRadius: 20, endRadius: 500)
                Text("Radial Gradient")
                .bigLight()
        }
    }
}

struct RadialGradientView_Previews: PreviewProvider {
    static var previews: some View {
        RadialGradientView()
    }
}
