//
//  WeatherRow.swift
//  CustomRows
//
//  Created by ganeshrajugalla on 01/04/23.
//

import SwiftUI

struct WeatherRow: View {
    var weather:WeatherInfo
    
    var body: some View {
        HStack{
            Image(systemName: weather.image)
                .frame(width: 50,alignment: .leading)
            Text("\(weather.temp) °F")
                .frame(width: 80,alignment: .leading)
            Text(weather.city)
        }
        .font(.system(size: 20))
        .padding()
    }
}

struct WeatherRow_Previews: PreviewProvider {
    static var previews: some View {
        WeatherRow(weather: WeatherInfo(image: "snow",
                               temp: 5, city:"New York"))
    }
}
