//
//  LottieAnimation.swift
//  LottieInSwiftUI
//
//  Created by Ganesh on 22/04/23.
//

import Lottie
import SwiftUI

struct LottieView: UIViewRepresentable {
    private let animationView = LottieAnimationView(name: "filling-heart")
    @Binding var play: Bool

    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .playOnce
        animationView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(animationView)
        NSLayoutConstraint.activate([
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])
        return view
    }

    func updateUIView(_ uiView: UIView, context: Context) {
        guard play else {
            return
        }
        animationView.play(fromProgress: 0, toProgress: 1) { _ in
            play = false
        }
    }
}

