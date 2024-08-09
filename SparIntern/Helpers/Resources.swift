//
//  File.swift
//  SparIntern
//
//  Created by Artem Rodionov on 06.08.2024.
//

import UIKit
import SwiftUI


enum R {
   // MARK: - Color Section
    enum Colors {
        
        static let separator = UIColor(hexString: "")
        static let backgroundCard = UIColor(hexString: "#FFFFFF")
        static let actionListBackground = UIColor(hexString: "#FFFFFF")
        static let shadowBackgroundCard = UIColor(hexString: "#8B8B8B")
        
        static let discountColor = UIColor(hexString: "#262626")
        static let cartButton = UIColor(hexString: "#15B742")
        
        static let badgeHitOnPrice = UIColor(hexString: "#FC6F6F")
        static let badgeNew = UIColor(hexString: "#7A79BA")
        static let badgePriceToCard = UIColor(hexString: "#5BCD7B")
    }
    
    // MARK: - String Section
    enum Strings {
        
    }
    
    // MARK: - Image Section
    enum Images {
        static let orderAction = Image("OrderProduct")
        static let favoritesAction = Image("FavoriteProduct")
        static let favoriteTap = Image("FavoriteTap")
        static let rateStar = Image("RateStar")
        static let listButton = Image("List")
        static let gridButton = Image("Grid")
        static let cartButton = Image("CartButton")
        
        static let cart = Image(systemName: "cart")
    }
}
