//
//  SheetWithNavView.swift
//  PresentingSheets
//
//  Created by ganeshrajugalla on 06/04/23.
//

import SwiftUI

struct SheetWithNavView: View {
    @Binding var showWithNav:Bool
    var body: some View {
        NavigationView {
            Text("Sheet With Navigation")
                .navigationBarTitle(Text("Sheet Title"), displayMode: .inline)
                .navigationBarItems(trailing: Button("Done", action: {
                    self.showWithNav = false
                }))
        }
    }
}

struct SheetWithNavView_Previews: PreviewProvider {
    static var previews: some View {
        SheetWithNavView(showWithNav: .constant(true))
    }
}
