//
//  ContentView.swift
//  ShopCard
//
//  Created by Камиль Байдиев on 19.04.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 20) {
                
                WBCard(item: WBCardModel.preview)
                
                YMCard(item: YMCardModel.preview)
                
                OzonCard(item: OzonCardModel.preview)
                
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
