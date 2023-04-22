//
//  DestinationListView.swift
//  HeroViewTransition
//
//  Created by Ganesh on 22/04/23.
//

import SwiftUI

struct DestinationListView: View {
    @Binding var selectedItem:Item!
    @Binding var showDetail:Bool
    let animation: Namespace.ID
    
    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 20) {
                ForEach(data){ item in
                    Image(item.image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                        .matchedGeometryEffect(id: item.image, in: animation)
                        .onTapGesture {
                            selectedItem = item
                            withAnimation {
                                showDetail.toggle()
                            }
                        }
                }
                .padding(.all,20)
            }
        }
    }
}

//struct DestinationListView_Previews: PreviewProvider {
//    static var previews: some View {
//        DestinationListView()
//    }
//}
