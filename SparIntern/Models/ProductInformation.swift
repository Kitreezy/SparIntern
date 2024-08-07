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
    var title: String
    var rating: Double
    var price: Int
    var kopecs: Int
    var discount: Double
    
    init(id: UUID = UUID(), image: String, rating: Double, title: String, price: Int, kopecs: Int, discount: Double) {
        self.id = id
        self.image = image
        self.rating = rating
        self.title = title
        self.price = price
        self.kopecs = kopecs
        self.discount = discount
    }
}

extension ProductInformation {
    static let mockData: [ProductInformation] = [
        ProductInformation(image: "Img1", rating: 4.1, title: "сыр Ламбер 500/0 230г",
                           price: 99, kopecs: 90, discount: 199.0),
        ProductInformation(image: "Img2", rating: 4.1, title: "Энергетический напиток",
                           price: 95699, kopecs: 90, discount: 199.0),
        ProductInformation(image: "Img3", rating: 4.1, title: "Салат Овощной с Крабовыми Палочками",
                           price: 250, kopecs: 90, discount: 199.0),
        ProductInformation(image: "Img4", rating: 4.1, title: "Дорадо Охлажденная Непотрошеная 300-400г",
                           price: 99, kopecs: 90, discount: 199.0),
        ProductInformation(image: "Img5", rating: 4.1, title: "Ролл Маленькая Япония 216г",
                           price: 367, kopecs: 90, discount: 199.0),
        ProductInformation(image: "Img6", rating: 4.1, title: "Огурцы тепличные садово-огородные",
                           price: 99, kopecs: 90, discount: 199.0),
        ProductInformation(image: "Img7", rating: 4.1, title: "Манго Кео",
                           price: 1298, kopecs: 90, discount: 199.0),
        ProductInformation(image: "Img8", rating: 4.1, title: "Салат Овощной с Крабовыми Палочками",
                           price: 120, kopecs: 90, discount: 199.0),
        ProductInformation(image: "Img9", rating: 4.1, title: "Салат Овощной с Крабовыми Палочками",
                           price: 1298, kopecs: 90, discount: 199.0),
        ProductInformation(image: "Img10", rating: 4.1, title: "Масло Слобода Рафинированное 1,8л",
                           price: 1298, kopecs: 90, discount: 199.0),
        ProductInformation(image: "Img11", rating: 4.1, title: "Салат Овощной с Крабовыми Палочками",
                           price: 250, kopecs: 0, discount: 199.0),
        ProductInformation(image: "Img12", rating: 4.1, title: "Макаронные Изделия SPAR Спагетти 450г",
                           price: 2600, kopecs: 90, discount: 199.0),
        ProductInformation(image: "Img13", rating: 4.1, title: "Яблоки Ред Франция",
                           price: 120, kopecs: 90, discount: 199.0),
        ProductInformation(image: "Img14", rating: 4.1, title: "Хлеб пшеничный",
                           price: 120, kopecs: 90, discount: 199.0),
    ]
}
