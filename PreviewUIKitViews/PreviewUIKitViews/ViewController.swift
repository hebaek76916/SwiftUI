//
//  ViewController.swift
//  PreviewUIKitViews
//
//  Created by ganeshrajugalla on 02/04/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        label.center = CGPoint(x: 160, y: 285)
        label.textAlignment = .center
        label.text = "Previewing UIKit views"
        label.font = UIFont.systemFont(ofSize: 20)
        self.view.addSubview(label)
    }


}

