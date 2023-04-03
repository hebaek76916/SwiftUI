//
//  HomeView.swift
//  UsingTabViews
//
//  Created by ganeshrajugalla on 04/04/23.
//

import SwiftUI

struct HomeView: View {
    let games = ["Doom", "Final F","Cyberpunk",
    "avengers", "animal trivia", "sudoku", "snakes and ladders", "Power rangers", "ultimate frisbee","football", "soccer", "much more"]
    var body: some View {
        NavigationView {
            List{
                ForEach(games,id: \.self){ game in
                    Text(game)
                        .padding()
                }
                .navigationBarTitle("Best games of 2021", displayMode: .inline)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
