//
//  ContentView.swift
//  UsingViewModifiers
//
//  Created by ganeshrajugalla on 01/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       Text("Perfect")
            .backgroundStyle(color: .black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// custom Modifier
struct BackgroundStyle: ViewModifier{
    var bgColor: Color
    
    func body(content: Content) -> some View {
        content
            .frame(width: UIScreen.main.bounds.width * 0.3)
            .foregroundColor(Color.white)
            .padding()
            .background(bgColor)
            .cornerRadius(CGFloat(20))
    }
}

extension View{
    func backgroundStyle(color: Color) -> some View{
        self.modifier(BackgroundStyle(bgColor: color))
    }
}
