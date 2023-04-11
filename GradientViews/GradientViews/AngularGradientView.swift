//
//  AngularGradientView.swift
//  GradientViews
//
//  Created by Ganesh on 12/04/23.
//

import SwiftUI

struct AngularGradientView: View {
    var body: some View {
        ZStack{
            AngularGradient(gradient: Gradient(colors: [.orange,.green,.blue,.black]), center: .center)
            Text("Angular GradientView")
                .bigLight()
        }
    }
}

struct AngularGradientView_Previews: PreviewProvider {
    static var previews: some View {
        AngularGradientView()
    }
}
