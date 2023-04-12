//
//  BarChartView.swift
//  BarChart
//
//  Created by Ganesh on 13/04/23.
//

import SwiftUI

struct BarChartView: View {
    var dataPoints: [MonthDataPoint]
    var body: some View {
        HStack(spacing: 20) {
            ForEach(dataPoints) { 
                BarView(dataPoint: $0)
            }
        }
    }
}

//struct BarChartView_Previews: PreviewProvider {
//    static var previews: some View {
//        BarChartView()
//    }
//}
