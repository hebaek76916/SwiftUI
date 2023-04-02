//
//  TodoWidgetBundle.swift
//  TodoWidget
//
//  Created by ganeshrajugalla on 02/04/23.
//

import WidgetKit
import SwiftUI

@main
struct TodoWidgetBundle: WidgetBundle {
    var body: some Widget {
        TodoWidget()
        TodoWidgetLiveActivity()
    }
}
