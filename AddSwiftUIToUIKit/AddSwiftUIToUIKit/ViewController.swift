//
//  ViewController.swift
//  AddSwiftUIToUIKit
//
//  Created by ganeshrajugalla on 01/04/23.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBSegueAction func goToSwiftUI(_ coder: NSCoder) -> UIViewController? {
        let greeting = "Hello from UIKit"
        let rootView = Greetings(textFromUIKit:
                                    greeting)
        return UIHostingController(coder: coder, rootView: rootView)
    }
    
}

