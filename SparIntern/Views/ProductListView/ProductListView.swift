//
//  ProductListView.swift
//  SparIntern
//
//  Created by Artem Rodionov on 06.08.2024.
//

import SwiftUI

struct ProductListView: View {
    @ObservedObject private var viewModel = ProductViewModel()
    
    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: false) {
                LazyVStack(spacing: 0) {
                    ForEach(viewModel.products) { product in
                        ProductCardListView(product: product)
                    }
                }
            }
        }
    }
}

struct ContentView_PreviewProvider: PreviewProvider{
    static var previews: some View {
        ProductListView()
    }
}

//#Preview {
//    ContentView()
//}
