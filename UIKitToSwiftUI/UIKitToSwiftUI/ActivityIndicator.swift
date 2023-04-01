//
//  ActivityIndicator.swift
//  UIKitToSwiftUI
//
//  Created by ganeshrajugalla on 01/04/23.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
    var animating:Bool
    func makeUIView(context: Context) -> UIActivityIndicatorView{
        return UIActivityIndicatorView()
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        if animating{
            uiView.startAnimating()
        }else{
            uiView.stopAnimating()
        }
    }
}


