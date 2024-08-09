//
//  ProductCardListView.swift
//  SparIntern
//
//  Created by Artem Rodionov on 08.08.2024.
//

import SwiftUI

struct ProductCardListView: View {
    let product: ProductInformation
        
    @State private var isCompact = true
    @State private var isFavorite = true
    
    var body: some View {
        VStack {
            Divider()
            HStack {
                Image(product.image)
                    .resizable()
                    .frame(width: 168, height: 168)
                
                VStack(alignment: .leading) {
                    HStack(spacing: 2) {
                        R.Images.rateStar
                            .resizable()
                            .frame(width: 16, height: 16)
                        Text(String(format: "%.1f", product.rating))
                            .font(.system(size: 12, weight: .regular))
                        Text(" | 19 отзывов")
                            .font(.system(size: 12))
                            .foregroundStyle(Color.gray)
                    }
                    
                    
                    Text(product.title)
                        .lineLimit(2)
                        .font(.system(size: 12, weight: .regular))
                    
                    Spacer()
                    
                    if isCompact {
                        HStack {
                            VStack(alignment: .leading) {
                                HStack(spacing: 0) {
                                    Text(String(product.price))
                                        .font(.system(size: 15, weight: .semibold))
                                    
                                    Text(" \(product.kopecs)")
                                        .font(.system(size: 10, weight: .semibold))
                                        .padding(.bottom, 4)
                                    
                                    HStack(spacing: 0) {
                                        Text("р")
                                            .font(.system(size: 8, weight: .bold))
                                            .offset(x: 5, y: -5)
                                        DiagonalDivider()
                                            .stroke(Color.black, lineWidth: 1.5)
                                            .frame(width: 10, height: 10)
                                        
                                        Text("кг")
                                            .font(.system(size: 8, weight: .bold))
                                            .offset(x: -5, y: 5)
                                    }
                                }
                                
                                Text(String(format: "%.1f", product.discount))
                                    .strikethrough()
                                    .foregroundStyle(Color(R.Colors.discountColor).opacity(0.6))
                                    .font(.system(size: 12, weight: .regular))
                                    .padding(.top, -10)
                                
                            }
                            Spacer()
                            CartButtonView(product: product, isCompact: $isCompact)
                        }
                        
                    } else {

                            CartButtonView(product: product, isCompact: $isCompact)
                    }
                }
                .padding(EdgeInsets(top: 10, leading: 8, bottom: 10, trailing: 4))
            }
            .frame(width: 375, height: 176)
            .background(Color(R.Colors.backgroundCard))
        
            .overlay(alignment: .topTrailing) {
                ActionListView(isFavorite: $isFavorite)
            }
            
            .overlay(alignment: .topLeading) {
                Text(product.badge?.rawValue ?? "")
                    .font(.system(size: 10))
                    .foregroundStyle(Color.white)
                    .frame(width: 84, height: 16)
                    .background(product.badge?.badgeColor)
                    .clipShape(.rect(topLeadingRadius: 16, bottomLeadingRadius: 0, bottomTrailingRadius: 6, topTrailingRadius: 6))
        }
        }
    }
}

struct ProductCardListView_PreviewProvider: PreviewProvider {
    static var product = ProductInformation.mockData[0]
    static var previews: some View {
        ProductCardListView(product: product)
    }
}
