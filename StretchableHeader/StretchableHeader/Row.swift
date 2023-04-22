//
//  Row.swift
//  StretchableHeader
//
//  Created by Ganesh on 22/04/23.
//

import SwiftUI

struct Row: View {
    var body: some View {
        HStack{
            Image("avatar")
                .resizable()
                .frame(width: 50,height: 50)
                .clipShape(Circle())
            Spacer()
            VStack(alignment: .trailing) {
                Text("Billie Eilish")
                    .fontWeight(.heavy)
                Text("Happier Than Ever")
            }
        }
        .padding(.horizontal,15)
    }
}

struct Row_Previews: PreviewProvider {
    static var previews: some View {
        Row()
    }
}
