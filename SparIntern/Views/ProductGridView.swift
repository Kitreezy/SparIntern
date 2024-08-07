//
//  ProductGridView.swift
//  SparIntern
//
//  Created by Artem Rodionov on 06.08.2024.
//

import SwiftUI


struct ProductGridView: View {    
    @ObservedObject private var viewModel = ProductViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                HStack {
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 2)) {
                        ForEach(viewModel.products) { product in
                            ProductCardView(product: product)
                        }
                    }
                    .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                }
            }
            .frame(width: 375)
         
        }
    }
}




struct ProductGrid_PreviewProvider: PreviewProvider {
    static var previews: some View {
        ProductGridView()
    }
}
