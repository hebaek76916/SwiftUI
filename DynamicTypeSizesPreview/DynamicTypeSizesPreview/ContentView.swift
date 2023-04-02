//
//  ContentView.swift
//  DynamicTypeSizesPreview
//
//  Created by ganeshrajugalla on 02/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       ArticleView(article: sampleArticle2)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ContentView()
            ContentView()
                .environment(\.dynamicTypeSize,.xSmall)
            ContentView()
                .environment(\.dynamicTypeSize,.accessibility5)
        }.previewLayout(.sizeThatFits)
    }
}
