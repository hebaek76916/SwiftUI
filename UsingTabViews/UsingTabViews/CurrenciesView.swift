//
//  CurrenciesView.swift
//  UsingTabViews
//
//  Created by ganeshrajugalla on 04/04/23.
//

import SwiftUI

struct CurrenciesView: View {
    var body: some View {
        NavigationView {
            VStack{
                ForEach(currencies) { currency in
                    HStack{
                        Group{
                            Text(currency.name)
                            Spacer()
                            Image(systemName: currency.image)
                        }
                        .font(.system(size: 40,design: .default))
                        .padding()
                    }
                }
            }
            .navigationBarTitle("Currencies")
        }
    }
}

struct CurrenciesView_Previews: PreviewProvider {
    static var previews: some View {
        CurrenciesView()
    }
}
