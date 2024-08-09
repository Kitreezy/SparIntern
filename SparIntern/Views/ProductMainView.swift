//
//  ProductMainView.swift
//  SparIntern
//
//  Created by Artem Rodionov on 07.08.2024.
//

import SwiftUI

struct ProductMainView: View {
    @StateObject private var viewModel = ProductViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                if viewModel.currentViewMode == .grid {
                    ProductListView()
                } else {
                    ProductGridView()
                }
            }
            .toolbar {
                ToolbarItem (placement: .topBarLeading) {
                    Button {
                        viewModel.toggleViewMode()
                    } label: {
                        if viewModel.currentViewMode == .grid {
                            R.Images.gridButton
                        } else {
                            R.Images.listButton
                        }
                    }
                }
            }
        }
    }
}

struct ProductMainView_PreviewProvider: PreviewProvider {
    static var previews: some View {
        ProductMainView()
    }
}
