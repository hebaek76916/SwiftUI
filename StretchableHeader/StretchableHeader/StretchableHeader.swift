//
//  StretchableHeader.swift
//  StretchableHeader
//
//  Created by Ganesh on 22/04/23.
//

import SwiftUI

struct StretchableHeader: View {
    var imageName: String
    var body: some View {
        GeometryReader { geometry in
            Image(self.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: geometry.size.width,height: geometry.height)
                .offset(y: geometry.verticalOffset)
        }
        .frame(height: 350)
    }
}

struct StretchableHeader_Previews: PreviewProvider {
    static var previews: some View {
        StretchableHeader(imageName: "avatar")
    }
}


extension GeometryProxy{
    private var offset: CGFloat{
        frame(in: .global).minY
    }
    
    var height: CGFloat{
        size.height + (offset > 0 ? offset : 0)
    }
    
    var verticalOffset: CGFloat{
        offset > 0 ? -offset : 0
    }
}
