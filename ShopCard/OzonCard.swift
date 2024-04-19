//
//  ShopCardOzon.swift
//  ShopCard
//
//  Created by Камиль Байдиев on 18.04.2024.
//

import SwiftUI

struct OzonCardModel: Codable {
    let data: String
    let currentPrice: String
    let oldPrice: String
    
    static let preview: OzonCardModel = OzonCardModel(data: "17 - 30 апреля", currentPrice: "899₽", oldPrice: "1599₽")
}

struct OzonCard: View {
    
    let item: OzonCardModel
    @State var isSelected: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading, spacing: 0) {
                    Text(item.data)
                        .font(.title2)
                        .foregroundStyle(.blue)
                        .bold()
                    
                    Spacer().frame(height: 1)
                    
                    Text(item.currentPrice)
                        .font(.system(size: 35))
                        .foregroundStyle(.blue)
                        .bold()
                    
                    Spacer().frame(height: 0)
                    
                    Text(item.oldPrice)
                        .font(.system(size: 15))
                        .foregroundStyle(.gray)
                        .bold()
                        .strikethrough()
                    
                    Spacer().frame(height: 0)
                }
            }
            .padding(.trailing)
            
            Image(.ozon)
                .resizable()
                .frame(width: 130, height: 65)
                .cornerRadius(15)
                .foregroundColor(.red)
                .padding()
        }
        .padding()
        .overlay {
            RoundedRectangle(cornerRadius: 16)
                .fill(LinearGradient(gradient: Gradient(colors: isSelected ? [.red, .white] : [.blue, .white]), 
                                     startPoint: .topLeading,
                                     endPoint: .bottomTrailing))
                .mask(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(lineWidth: 5)
                )
        }
    }
}

#Preview {
    OzonCard(item: OzonCardModel.preview)
}
