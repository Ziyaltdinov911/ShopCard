//
//  ContentView.swift
//  ShopCard
//
//  Created by Камиль Байдиев on 18.04.2024.
//

import SwiftUI

struct YMCardModel: Codable {
    let image: String
    let title: String
    let price: String
    let discountPrice: String
    
    static let preview: YMCardModel = YMCardModel(image: "yandex", title: "Умная колонка Яндекс Станция 2 с Алисой на YandexGPT, черный антрацит", price: "11885₽", discountPrice: "17990₽")
}

struct YMCard: View {
    
    let item: YMCardModel
    @State var isSelected: Bool = false

    var body: some View {
        VStack {
            Image(.yandex)
                .resizable()
                .frame(width: 200, height: 200)
                .cornerRadius(15)
                .overlay(alignment: .topTrailing) {
                    Button(action: {
                        isSelected.toggle()
                    }, label: {
                        Image(systemName: "heart.fill")

                    })
                    .foregroundColor(isSelected ? .red : .gray)
                    .padding()

                }
            
            Text(item.title)
                .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
            
            HStack {
                Text(item.price)
                    .foregroundStyle(.green)
                    .font(.title)
                    .bold()
                Text(item.discountPrice)
                    .foregroundStyle(.gray)
                    .strikethrough()
                
                Spacer()

            }
        }
        .frame(width: 200)
    }
}

#Preview {
    YMCard(item: YMCardModel.preview)
}


//Text("Умная колонка Яндекс Станция 2 с Алисой на YandexGPT, черный антрацит")
//Text("11885₽")
//Text("17990₽")
