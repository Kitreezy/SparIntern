//
//  ActionListView.swift
//  SparIntern
//
//  Created by Artem Rodionov on 09.08.2024.
//

import SwiftUI

struct ActionListView: View {
    @Binding var isFavorite: Bool
    
    var body: some View {
            VStack(alignment: .trailing) {
                Button {
                // some action
                } label: {
                    R.Images.orderAction
                }
                Button {
                // some action
                    
                    withAnimation {
                        isFavorite.toggle()
                    }
                } label: {
                    if isFavorite {
                        R.Images.favoritesAction
                    } else {
                        R.Images.favoriteTap
                    }
                }
                .frame(width: 16, height: 16)
            }
            .frame(width: 32, height: 64)
            .background(Color(R.Colors.actionListBackground).opacity(0.8))
            .clipShape(.rect(cornerRadius: 16))
    }
}

struct ActionListView_PreviewProvider: PreviewProvider {
    static var previews: some View {
        ActionListView(isFavorite: .constant(true))
    }
}
