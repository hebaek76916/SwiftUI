//
//  BannerView.swift
//  BannerWithASpringAnimation
//
//  Created by Ganesh on 15/04/23.
//

import SwiftUI

struct BannerView: View {
    var message: String
    var show: Bool
    var body: some View {
        Text(message)
            .font(.title)
            .frame(width: UIScreen.main.bounds.width - 20, height: 100)
            .foregroundColor(.white)
            .background(.green)
            .cornerRadius(10)
            .offset(y: show ? -UIScreen.main.bounds.height / 3 : -UIScreen.main.bounds.height)
            .animation(.interpolatingSpring(mass: 2.0,stiffness: 100.0, damping: 10,initialVelocity: 0), value: show)
    }
}

struct BannerView_Previews: PreviewProvider {
    static var previews: some View {
        BannerView(message: "Ganesh", show: true)
    }
}
