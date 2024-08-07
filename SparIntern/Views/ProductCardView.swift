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
        ZStack {
            VStack(alignment: .leading) {
                Image(product.image)
                    .resizable()
                    .frame(width: 168, height: 168)
                    
                    .overlay(alignment: .bottomLeading, content: {
                        HStack(spacing: 2) {
                            Image(R.Strings.rateStar)
                                .resizable()
                                .frame(width: 16, height: 16)
                            Text(String(format: "%.1f", product.rating))
                                .font(.system(size: 12, weight: .regular))
                        }
                        .padding(.leading, 5)
                    })
                    
                VStack(alignment: .leading) {
                Text(product.title)
                    .lineLimit(nil)
                    .font(.system(size: 12, weight: .regular))
                    Spacer()
                    VStack(alignment: .leading) {
                        HStack() {
                            Text("\(product.price)")
                                .font(.system(size: 20, weight: .bold))
                            Text("\(product.kopecs)")
                                .font(.system(size: 16, weight: .bold))
                                .offset(x: -5)
                            HStack(spacing: 0) {
                                Text("р")
                                    .font(.system(size: 12, weight: .bold))
                                    .padding(.trailing, 3)
                                    .offset(x: 5, y: -5)
                                GeometryReader { geometry in
                                    Path { path in
                                        let start = CGPoint(x: 0, y: geometry.size.height)
                                        let end = CGPoint(x: geometry.size.width, y: 0)
                                        path.move(to: start)
                                        path.addLine(to: end)
                                    }
                                    .stroke(Color.black, lineWidth: 1)
                                }
                                .frame(width: 13, height: 15)
                                Text("кг")
                                    .font(.system(size: 12, weight: .bold))
                                    .offset(x: -5, y: 5)
                            }
                            .offset(x: -13)
                        }
                        
                        Text(String(format: "%.1f", product.discount))
                            .strikethrough()
                            .foregroundStyle(Color(R.Colors.discountColor).opacity(0.6))
                            .font(.system(size: 12, weight: .regular))
                    }
                    .padding(.bottom)
                }
                .frame(width: 168, height: 110)
                .padding(.leading, -20)
            }
        }
        .padding()
        .frame(width: 168, height: 278)
        .background(Color(R.Colors.backgroundCard))
        .clipShape(.rect(cornerRadius: 16))
        .shadow(color: Color(R.Colors.shadowBackgroundCard).opacity(0.2), radius: 8)
        
        .overlay(alignment: .topTrailing, content: {
            actionList
        })
    }
    
    var actionList: some View {
        ZStack {
            VStack(alignment: .trailing) {
                Button {
                    
                } label: {
                    Image(R.Strings.orderAction)
                }
                
                Button {
                    
                } label: {
                    Image(R.Strings.favoritesAction)
                }
            }
        }
//        .padding()
        .frame(width: 32, height: 64)
        .background(Color(R.Colors.actionListBackground).opacity(0.8))
        .clipShape(.rect(cornerRadius: 16))
        
    }
}

struct ProductCardView_PreviewProvider: PreviewProvider {
    static var product = ProductInformation.mockData[12]
    static var previews: some View {
        ProductCardView(product: product)
    }
}
