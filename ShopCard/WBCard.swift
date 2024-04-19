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
        
        VStack(alignment: .leading, spacing: 5) {
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
                    
                
                VStack {
                    Text(item.productName)
                        .lineLimit(1)
                        .font(.system(size: 15))
                        .foregroundColor(.gray)
                }
                
            }
            
            HStack {
                Text(.init(systemName: "star.fill"))
                    .foregroundStyle(.yellow)
                    .font(.system(size: 15))
                
                Text(item.feedback)
                    .font(.system(size: 15))
                
                Text(item.feedbackText)
                    .font(.system(size: 15))
                    .foregroundStyle(.gray)
            }
            .bold()
            
            Button(action: {
                print("Кнопка нажата")
                
            }) {
                HStack {
                    Image(systemName: "cart.fill")
                        .foregroundColor(.white)
                    Text(item.btnToCartText)
                        .foregroundStyle(.white)
                        .bold()
                }
            }
            
            
            .frame(height: 40)
            .frame(maxWidth: .infinity)
            .background(.purple)
            .cornerRadius(15)
            .contentShape(Rectangle())
            
        }
        .frame(width: 200)
    }
}


#Preview {
    WBCard(item: WBCardModel.preview)
}
