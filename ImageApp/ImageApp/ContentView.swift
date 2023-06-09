//
//  ContentView.swift
//  ImageApp
//
//  Created by ganeshrajugalla on 01/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
          Image("dogs1")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Image("dog-and-nature")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300,height: 200)
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(.blue,lineWidth: 6)
                }
                .shadow(radius: 10)
            Image(uiImage: getImageFromString(image: "dog2"))
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200,height: 200)
        }
       
    }
    
    func getImageFromString(image:String) -> UIImage{
        guard let img = UIImage(named: image) else {
            fatalError("unable to load imafe")
        }
        return img
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
