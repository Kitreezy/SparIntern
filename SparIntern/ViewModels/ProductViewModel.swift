//
//  ProductViewModel.swift
//  SparIntern
//
//  Created by Artem Rodionov on 07.08.2024.
//

import Foundation

// MARK: - Local Product ViewModel
class ProductViewModel:  ObservableObject {
    @Published private(set) var products: [ProductInformation] = []
    @Published var currentViewMode: ViewMode = .grid
    
    init() {
        toggleViewMode()
        loadProducts()
    }
    
    func toggleViewMode() {
        currentViewMode = (currentViewMode == .grid) ? .list : .grid
    }
    private func loadProducts() {
        products = ProductService.getMockProduct()
    }
}

enum ViewMode {
    case grid
    case list
}
