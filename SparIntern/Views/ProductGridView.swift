//
//  ProductGridView.swift
//  SparIntern
//
//  Created by Artem Rodionov on 06.08.2024.
//

import SwiftUI


struct ProductGridView: View {
    @Binding var products: [ProductInformation]
    
    var body: some View {
        NavigationStack {
            
            ScrollView(.vertical, showsIndicators: false) {
                HStack {
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 2)) {
                        ForEach($products) { $products in
                            ProductCardView(product: products)
                        }
                    }
                    .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                }
            }
            .padding(.bottom, 16)
            .frame(width: 375)
           
            .toolbar {
                ToolbarItem (placement: .topBarLeading) {
                    Button {
                        
                    } label: {
                        Image(R.Strings.gridButton)
                        
                    }
                }
            }
        }
    }
}


struct ProductGrid_PreviewProvider: PreviewProvider {
    static var previews: some View {
        ProductGridView(products: .constant(ProductInformation.mockData))
    }
}
