//
//  CartButtonView.swift
//  SparIntern
//
//  Created by Artem Rodionov on 09.08.2024.
//

import SwiftUI


struct CartButtonView: View {
    let product: ProductInformation
    let amount = ["ШТ", "КГ"]
    @Binding var isCompact: Bool
    @State private var selectedAmount: String = "КГ"
    @State private var weight: Double = 0.0
    @State private var count: Int = 0
    
    var body: some View {
       VStack {
            if isCompact  {
                Button {
                    // some action
                    isCompact.toggle()
                } label: {
                    R.Images.cartButton
                }
                .frame(width: 48, height: 36)
                .background(Color(R.Colors.cartButton))
                .clipShape(.rect(cornerRadius: 20))
            } else {
                VStack {
                    
                    Picker("", selection: $selectedAmount) {
                        ForEach(amount, id: \.self) { amount in
                            Text(amount).tag(amount)
                        }
                    }
                    .pickerStyle(.segmented)
                    .clipShape(.rect(cornerRadius: 8))
                    .onChange(of: selectedAmount) { _ in
                        count = 0
                        weight = 0.0
                    }
                    
                    HStack {
                        Button {
                            if weight > 0.1 || count > 1 {
                                selectedAmount == "КГ" ? (weight -= 0.1) : (count -= 1)
                            }
                        } label: {
                            Text("-")
                        }
                        
                        Spacer()
                        
                        VStack(alignment: .center) {
                            Text(selectedAmount == "КГ" ? 
                                 "\(String(format: "%.1f", weight)) кг" : "\(count) шт")
                                .font(.system(size: 16, weight: .bold))
                            Text(selectedAmount == "КГ" ? 
                                 "~\(String(format: "%.2f", weight * Double(product.price))) Р" : "\(count * product.price) Р")
                                .font(.system(size: 12))
                        }
                        .onTapGesture {
                            count = 0
                            weight = 0.0
                            isCompact.toggle()
                        }
                        
                        Spacer()
                        
                        Button {
                            selectedAmount == "КГ" ? (weight += 0.1) : (count += 1)
                            
                        } label: {
                            Text("+")
                        }
                    }
                    .padding()
                    .font(.system(size: 20))
                    .foregroundStyle(Color.white)
                    .frame(width: 155, height: 44)
                    .background(Color(R.Colors.cartButton))
                    .clipShape(.rect(cornerRadius: 20))
                    
                }
            }
        }
    }
}

struct CartButtonView_PreviewProvider: PreviewProvider {
    static var product = ProductInformation.mockData[0]
    static var previews: some View {
        CartButtonView(product: product, isCompact: .constant(true))
    }
}
