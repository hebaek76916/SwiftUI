//
//  ViewControllerPreview.swift
//  PreviewUIKitViews
//
//  Created by ganeshrajugalla on 02/04/23.
//

import SwiftUI
import UIKit

struct ViewControllerPreview:UIViewControllerRepresentable{
    let viewControllerBuilder: () -> UIViewController
    init(viewControllerBuilder: @escaping () -> UIViewController) {
        self.viewControllerBuilder = viewControllerBuilder
    }
    
    
    func makeUIViewController(context: Context) -> some UIViewController {
        return viewControllerBuilder()
    }
    
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
            
    }
    
}


struct ViewController_Preview: PreviewProvider{
    static var previews: some View{
        ViewControllerPreview{
            ViewController()
        }
    }
}
