//
//  BarView.swift
//  BarChart
//
//  Created by Ganesh on 13/04/23.
//

import SwiftUI

struct BarView: View {
    var dataPoint:MonthDataPoint
    var body: some View {
        VStack{
            ZStack(alignment: .bottom) {
                Rectangle()
                    .fill(.blue)
                    .frame(width: 10,height: 180)
                
                Rectangle()
                    .fill(.white)
                    .frame(width: 10,height: dataPoint.value * 180)
            }
            Text(dataPoint.name)
                .font(.system(size: 8))
                .rotationEffect(.degrees(-45))
        }
    }
}

//struct BarView_Previews: PreviewProvider {
//    static var previews: some View {
//        BarView()
//    }
//}
