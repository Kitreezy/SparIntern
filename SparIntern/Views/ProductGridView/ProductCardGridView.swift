//
//  ProductCardView.swift
//  SparIntern
//
//  Created by Artem Rodionov on 06.08.2024.
//

import SwiftUI


struct ProductCardGridView: View {
    let product: ProductInformation
        
    @State private var isCompact = true
    @State private var isFavorite = true
    
    
    var body: some View {
        // MARK: - CardView
        VStack(alignment: .leading) {
            Image(product.image)
                .resizable()
                .frame(width: 168, height: 168)
                .overlay(alignment: .bottomLeading, content: {
                    HStack(spacing: 2) {
                        R.Images.rateStar
                            .resizable()
                            .frame(width: 16, height: 16)
                        Text(String(format: "%.1f", product.rating))
                            .font(.system(size: 12, weight: .regular))
                    }
                    .padding(.leading, 4)
                })
            // MARK: - Bottom ViewStack
            VStack(alignment: .leading) {
                Text(product.title)
                    .lineLimit(2)
                    .font(.system(size: 12, weight: .regular))
                
                Spacer()
                
                if isCompact {
                    // MARK: - Bottom price + cent + discount + button
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
                        .padding(EdgeInsets(top: 0, leading: 4, bottom: 0, trailing: 4))
                        Spacer()
                        CartButtonView(product: product, isCompact: $isCompact)
                    }
                } else {

                        CartButtonView(product: product, isCompact: $isCompact)
                }
            }
            .padding(EdgeInsets(top: 0, leading: 8, bottom: 4, trailing: 4))
        }
        .frame(width: 168, height: 278)
        .background(Color(R.Colors.backgroundCard))
        .clipShape(.rect(topLeadingRadius: 20, bottomLeadingRadius: 20, bottomTrailingRadius: 16, topTrailingRadius: 16))
        .shadow(color: Color(R.Colors.shadowBackgroundCard).opacity(0.2), radius: 8)
    // MARK: - Order + Favorite
        .overlay(alignment: .topTrailing) {
            ActionListView(isFavorite: $isFavorite)
        }
        // MARK: - Badge Special
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

struct ProductCardGridView_PreviewProvider: PreviewProvider {
    static var product = ProductInformation.mockData[0]
    static var previews: some View {
        ProductCardGridView(product: product)
    }
}
