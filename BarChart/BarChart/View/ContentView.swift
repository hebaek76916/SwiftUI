//
//  ContentView.swift
//  BarChart
//
//  Created by Ganesh on 12/04/23.
//

import SwiftUI

struct ContentView: View {
    let dataSets = [DataSet.dublin,DataSet.milan,DataSet.london]
    @State var selectedCity = 0
    var body: some View {
        VStack(spacing: 24) {
            Text("Average Precipitation")
                .font(.system(size: 32))
            
            Picker(selection: $selectedCity) {
                Text("Dublin").tag(0)
                Text("Milan").tag(1)
                Text("London").tag(2)
            } label: {
                Text("Average Precipitation")
            }
            .pickerStyle(.segmented)
            
            BarChartView(dataPoints: dataSets[selectedCity])
            Spacer()

        }
        .padding(.horizontal,10)
        .background(.mint,ignoresSafeAreaEdges: .vertical)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
