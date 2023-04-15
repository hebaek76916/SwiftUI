//
//  ContentView.swift
//  BasicAnimations
//
//  Created by Ganesh on 15/04/23.
//

import SwiftUI

struct ContentView: View {
    @State private  var onTop: Bool = false
    @State private var type = AnimationType(name: "default", animation: .default)
    @State private var showSelection = false
    var actionSheet: ActionSheet{
        ActionSheet(title: Text("AnimationsType"),buttons: AnimationType.all.map{ animType in
            .default(Text(animType.name)){
                self.type = animType
            }
        } + [ .destructive(Text("Cancel")) ])
    }
    var body: some View {
        VStack (spacing: 12){
            GeometryReader { geometry in
                HStack{
                    Circle().fill(.red)
                        .frame(width: 80,height: 80)
                        .offset(y: onTop ? -geometry.size.height / 2 : geometry.size.height / 2)
                        .animation(.default, value: onTop)
                    Spacer()
                    Circle().fill(.blue)
                        .frame(width: 80,height: 80)
                        .offset(y: onTop ? -geometry.size.height/2 : geometry.size.height/2)
                        .animation(type.animation, value: onTop)
                }.padding(.horizontal,30)
            }
            
            Button {
                onTop.toggle()
            } label: {
                Text("Animate")
            }
            
            Button {
                showSelection.toggle()
            } label: {
                Text("Choose Animation")
            }
            .actionSheet(isPresented: $showSelection) {
                actionSheet
            }
            Text("Current: \(type.name)")

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
