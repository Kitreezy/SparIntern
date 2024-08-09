//
//  FoodInformation.swift
//  SparIntern
//
//  Created by Artem Rodionov on 06.08.2024.
//

import SwiftUI

struct ProductInformation: Identifiable, Codable {
    var id: UUID
    var image: String
    var badge: Badge?
    var rating: Double
    var title: String
    var price: Int
    var kopecs: Int
    var discount: Double
    
    init(id: UUID = UUID(), image: String, badge: Badge?, rating: Double, title: String, price: Int, kopecs: Int, discount: Double) {
        self.id = id
        self.image = image
        self.badge = badge
        self.rating = rating
        self.title = title
        self.price = price
        self.kopecs = kopecs
        self.discount = discount
    }
}

extension ProductInformation {
    static let mockData: [ProductInformation] = [
        ProductInformation(image: "Img1", badge: .hitOnPrice, rating: 4.1, title: "сыр Ламбер 500/0 230г",
                           price: 99, kopecs: 90, discount: 199.0),
        ProductInformation(image: "Img15", badge: nil, rating: 4.1, title: "Энергетический напиток",
                           price: 95699, kopecs: 90, discount: 199.0),
        ProductInformation(image: "ImgDefault", badge: nil, rating: 4.1, title: "Салат Овощной с Крабовыми Палочками",
                           price: 250, kopecs: 90, discount: 199.0),
        ProductInformation(image: "Img4", badge: nil, rating: 4.1, title: "Дорадо Охлажденная Непотрошеная 300-400г",
                           price: 99, kopecs: 90, discount: 199.0),
        ProductInformation(image: "Img5", badge: .newProduct, rating: 4.1, title: "Ролл Маленькая Япония 216г",
                           price: 367, kopecs: 90, discount: 199.0),
        ProductInformation(image: "Img16", badge: .priceToCard, rating: 4.1, title: "Огурцы тепличные садово-огородные",
                           price: 99, kopecs: 90, discount: 199.0),
        ProductInformation(image: "Img7", badge: .newProduct, rating: 4.1, title: "Манго Кео",
                           price: 1298, kopecs: 90, discount: 199.0),
        ProductInformation(image: "Img8", badge: nil, rating: 4.1, title: "Салат Овощной с Крабовыми Палочками",
                           price: 120, kopecs: 90, discount: 199.0),
        ProductInformation(image: "Img9", badge: nil, rating: 4.1, title: "Салат Овощной с Крабовыми Палочками",
                           price: 1298, kopecs: 90, discount: 199.0),
        ProductInformation(image: "Img10", badge: .hitOnPrice, rating: 4.1, title: "Масло Слобода Рафинированное 1,8л",
                           price: 1298, kopecs: 90, discount: 199.0),
        ProductInformation(image: "Img11", badge: nil, rating: 4.1, title: "Салат Овощной с Крабовыми Палочками",
                           price: 250, kopecs: 90, discount: 199.0),
        ProductInformation(image: "Img12", badge: .newProduct, rating: 4.1, title: "Макаронные Изделия SPAR Спагетти 450г",
                           price: 2600, kopecs: 90, discount: 199.0),
        ProductInformation(image: "Img13", badge: nil, rating: 4.1, title: "Яблоки Ред Франция",
                           price: 120, kopecs: 90, discount: 199.0),
        ProductInformation(image: "Img14", badge: .priceToCard, rating: 4.1, title: "Хлеб пшеничный",
                           price: 120, kopecs: 90, discount: 199.0)
    ]
}

enum Badge: String, Codable {
    case hitOnPrice = "Удар по ценам"
    case newProduct = "Новинки"
    case priceToCard = "Цена по карте"
}

extension Badge {
    var badgeColor: Color {
        switch self {
        case .hitOnPrice:
            return Color(R.Colors.badgeHitOnPrice).opacity(0.9)
        case .newProduct:
            return Color(R.Colors.badgeNew).opacity(0.9)
        case .priceToCard:
            return Color(R.Colors.badgePriceToCard).opacity(0.9)
        }
    }
}
