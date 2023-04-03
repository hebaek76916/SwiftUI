//
//  LoginView.swift
//  FormFieldDisable
//
//  Created by ganeshrajugalla on 03/04/23.
//

import SwiftUI

struct LoginView: View {
    @State private var username = ""
    @State private var password = ""
    var body: some View {
        VStack{
            Text("Dungeons and Wagons")
                .fontWeight(.heavy)
                .font(.largeTitle)
                .foregroundColor(.blue)
                .padding(.bottom,30)
            Image(systemName: "person.circle")
                .font(.system(size: 150))
                .foregroundColor(.gray)
                .padding(.bottom,40)
            Group{
                TextField("Username", text: $username)
                SecureField("Password", text: $password)
            }
            .padding()
            .overlay {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.black,lineWidth: 2)
            }
            Button {
                print("Login Clicked")
            } label: {
                Text("Login")
            }
            .padding()
            .background((username.isEmpty || password.isEmpty) ? .gray :Color.blue)
            .foregroundColor(.white)
            .disabled(username.isEmpty || password.isEmpty)

        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
