//
//  ProductService.swift
//  SparIntern
//
//  Created by Artem Rodionov on 07.08.2024.
//

import Foundation

enum ServiceError: Error {
    case url(URLError)
    case urlRequest
    case decode
}


final class ProductService {
    static func getMockProduct() -> [ProductInformation] {
        return [
            ProductInformation(image: "Img1", badge: .hitOnPrice, rating: 4.1, title: "сыр Ламбер 500/0 230г",
                               price: 99, kopecs: 90, discount: 199.0),
            ProductInformation(image: "Img15", badge: nil, rating: 4.1, title: "Энергетический напиток",
                               price: 95699, kopecs: 90, discount: 199.0),
            ProductInformation(image: "Img3", badge: nil, rating: 4.1, title: "Салат Овощной с Крабовыми Палочками",
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
}
