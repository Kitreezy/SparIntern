//
//  CartViewModel.swift
//  SparIntern
//
//  Created by Artem Rodionov on 09.08.2024.
//

import Foundation

// MARK: - Local Cart
class CartViewModel: ObservableObject {
    @Published var items: [ProductInformation] = []
    
    
    func add(product: ProductInformation) {
        items.append(product)
    }
    
    func remove(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
}
