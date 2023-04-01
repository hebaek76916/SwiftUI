//
//  ContentView.swift
//  FormattedText
//
//  Created by ganeshrajugalla on 01/04/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var someText:String = "initial text"
    @State private var password:String = "1234"
    var body: some View {
        VStack {
           SecureField("Enter Password", text: $password)
                .padding()
            Text("Password Entered: \(password)")
                .italic()
            TextField("Enter some text", text: $someText)
            Text("\(someText)")
                .font(.largeTitle)
                .underline()
            
            Text("Changing texta and making it bold")
                .foregroundColor(Color.blue)
                .bold()
            Text("Use kerning to change space between line of text")
                .kerning(7)
            Text("Change baseline offset")
                .baselineOffset(100)
            Text("Strike Through")
                .strikethrough()
            Text("This is multiline text implemenyed in swiftui, the trailing modifier was added to text also implemented  multiple modifiers")
                .background(.yellow)
                .multilineTextAlignment(.trailing)
                .lineSpacing(10)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
