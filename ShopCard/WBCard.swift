//
//  WBCard.swift
//  ShopCard
//
//  Created by Камиль Байдиев on 19.04.2024.
//

import SwiftUI

struct WBCardModel: Codable {
    let currentPrice: String
    let oldPrice: String
    let textWithWallet: String
    let shopName: String
    let productName: String
    let feedback: String
    let feedbackText: String
    let cartImg: String
    let btnToCartText: String
    
    static let preview: WBCardModel = WBCardModel(currentPrice: "271 ₽", oldPrice: "3 000 ₽", textWithWallet: "с WB кошельком", shopName: "SKYBET", productName: "/ Мышь беспроводная", feedback: "4.8", feedbackText: "• 31 211 оценок", cartImg: "cart.fill", btnToCartText: "Послезавтра")
}

struct WBCard: View {
    
    let item: WBCardModel
    var body: some View {
        
        VStack(alignment: .leading) {
            Image(.wb)
                .resizable()
                .frame(width: 200, height: 300)
                .cornerRadius(15)
            
            HStack {
                Text(item.currentPrice)
                    .font(.title2)
                    .bold()
                    .foregroundStyle(.purple.opacity(0.9))
                
                Text(item.oldPrice)
                    .font(.callout)
                    .strikethrough()
                    .foregroundStyle(.gray)
            }
            
            HStack {
                Text(item.shopName)
                    .bold()
                    .font(.system(size: 15))
                    .padding(EdgeInsets(top: -5, leading: 0, bottom: 10, trailing: 0))
                
                VStack {
                    Text(item.productName)
                        .font(.system(size: 15))
                        .padding(EdgeInsets(top: -5, leading: 0, bottom: 10, trailing: 0))
                        .foregroundColor(.gray)
                }
                
            }
            
            HStack {
                Text(.init(systemName: "star.fill"))
                    .foregroundStyle(.yellow)
                    .font(.system(size: 15))
                    .padding(EdgeInsets(top: -10, leading: 0, bottom: 10, trailing: 0))
                
                Text(item.feedback)
                    .font(.system(size: 15))
                    .padding(EdgeInsets(top: -10, leading: -5, bottom: 10, trailing: 0))
                
                Text(item.feedbackText)
                    .font(.system(size: 15))
                    .foregroundStyle(.gray)
                    .padding(EdgeInsets(top: -10, leading: -5, bottom: 10, trailing: 0))
            }
            .bold()
        }
        
        HStack {
            Button(action: {
                print("Кнопка нажата")
            }) {
                Image(systemName: "cart.fill")
                    .foregroundColor(.white)
                Text(item.btnToCartText)
                    .foregroundStyle(.white)
                    .bold()
            }
        }
        .frame(width: 200, height: 40)
        .background(.purple)
        .cornerRadius(15)
        .padding(EdgeInsets(top: -10, leading: -20, bottom: 10, trailing: 0))
        .contentShape(Rectangle())


    }
}


#Preview {
    WBCard(item: WBCardModel.preview)
}
