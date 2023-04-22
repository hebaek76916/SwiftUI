//
//  ContentView.swift
//  CustomViewTransition
//
//  Created by Ganesh on 22/04/23.
//

import SwiftUI

struct ContentView: View {
    @State private var firstShow:Bool = true
    var body: some View {
        VStack(spacing: 24) {
            if firstShow{
                FirstComponenet()
                    .transition(.moveScaleAndFade)
            }else{
                SecondComponent()
                    .transition(.moveScaleAndFade)
            }
            
            Button {
                firstShow.toggle()
            } label: {
                Text("Change")
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .padding()
                    .background(.green)
                    .cornerRadius(5)
            }
        }
        .animation(.easeInOut, value: firstShow)
        .padding(.horizontal,20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


extension Image{
    func custom() -> some View{
        self
            .resizable()
            .aspectRatio(contentMode: .fit)
            .cornerRadius(20)
            .shadow(radius: 10)
    }
}


struct FirstComponenet: View{
    var body: some View{
        Image("ch8-r7-i1")
            .custom()
    }
}


struct SecondComponent: View{
    var body: some View{
        Image("ch8-r7-i2")
            .custom()
    }
}


extension AnyTransition{
    static var moveScaleAndFade:AnyTransition{
        let insertion = AnyTransition
            .scale
            .combined(with: .move(edge: .leading))
            .combined(with: .opacity)
        
        let removal = AnyTransition
            .scale
            .combined(with: .move(edge: .top))
            .combined(with: .opacity)
        
        return asymmetric(insertion: insertion, removal: removal)
    }
}
