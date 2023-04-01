//
//  ContentView.swift
//  CustomRows
//
//  Created by ganeshrajugalla on 01/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List{
            ForEach(weatherData) { weather in
                WeatherRow(weather: weather)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
