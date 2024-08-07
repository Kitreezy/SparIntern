//
//  ProductCardView.swift
//  SparIntern
//
//  Created by Artem Rodionov on 06.08.2024.
//

import SwiftUI


struct ProductCardView: View {
    let product: ProductInformation
    
    var body: some View {
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
            
            VStack(alignment: .leading) {
                Text(product.title)
                    .lineLimit(2)
                    .font(.system(size: 12, weight: .regular))
                
                Spacer()
                
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
                    
                    Button {
                        
                    } label: {
                        R.Images.cartButton
                    }
                    .frame(width: 48, height: 36)
                    .background(Color(R.Colors.cartButton))
                    .clipShape(.rect(cornerRadius: 20))
                }
                
            }
            .padding(EdgeInsets(top: 0, leading: 8, bottom: 4, trailing: 4))
        }
        .frame(width: 168, height: 278)
        .background(Color(R.Colors.backgroundCard))
        .clipShape(.rect(topLeadingRadius: 16, bottomLeadingRadius: 16, bottomTrailingRadius: 20, topTrailingRadius: 20))
        .shadow(color: Color(R.Colors.shadowBackgroundCard).opacity(0.2), radius: 8)
    
        .overlay(alignment: .topTrailing, content: {
            actionList
        })
    }
    
    var actionList: some View {
        ZStack {
            VStack(alignment: .trailing) {
                Button {
                // some action
                } label: {
                    R.Images.orderAction
                }
                Button {
                // some action
                } label: {
                    R.Images.favoritesAction
                }
            }
        }
        .frame(width: 32, height: 64)
        .background(Color(R.Colors.actionListBackground).opacity(0.8))
        .clipShape(.rect(cornerRadius: 16))
        
    }
}

struct DiagonalDivider: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        
        return path
    }
}

struct ProductCardView_PreviewProvider: PreviewProvider {
    static var product = ProductInformation.mockData[1]
    static var previews: some View {
        ProductCardView(product: product)
    }
}
