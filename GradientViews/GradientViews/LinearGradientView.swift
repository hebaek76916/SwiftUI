//
//  LinearGradientView.swift
//  GradientViews
//
//  Created by Ganesh on 12/04/23.
//

import SwiftUI

struct LinearGradientView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.orange,.green,.blue,.black]), startPoint: .topLeading, endPoint: .bottomTrailing)
            Text("Liner Gradient")
                .bigLight()
        }
    }
}

struct LinearGradientView_Previews: PreviewProvider {
    static var previews: some View {
        LinearGradientView()
    }
}
