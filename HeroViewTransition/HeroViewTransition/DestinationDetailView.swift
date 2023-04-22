//
//  DestinationDetailView.swift
//  HeroViewTransition
//
//  Created by Ganesh on 22/04/23.
//

import SwiftUI

struct DestinationDetailView: View {
    var selectedItem:Item
    @Binding var showDetail:Bool
    let animation: Namespace.ID
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            VStack{
                Image(selectedItem.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .matchedGeometryEffect(id: selectedItem.image, in: animation)
                
                Text(selectedItem.title)
                    .font(.title)
                
                Text(selectedItem.details)
                    .font(.callout)
                    .padding(.horizontal)
                Spacer()
            }
            .ignoresSafeArea(.all)
            Button {
                withAnimation {
                    showDetail.toggle()
                }
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .padding()
                    .background(.black.opacity(0.8))
                    .clipShape(Circle())
            }
            .padding(.trailing,10)

        }
    }
}

//struct DestinationDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        DestinationDetailView()
//    }
//}
