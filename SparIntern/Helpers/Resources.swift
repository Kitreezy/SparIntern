//
//  File.swift
//  SparIntern
//
//  Created by Artem Rodionov on 06.08.2024.
//

import UIKit


enum R {
   // MARK: - Color Section
    enum Colors {
        
        static let separator = UIColor(hexString: "")
        static let backgroundCard = UIColor(hexString: "#FFFFFF")
        static let actionListBackground = UIColor(hexString: "#FFFFFF")
        static let shadowBackgroundCard = UIColor(hexString: "#8B8B8B")
        
        static let discountColor = UIColor(hexString: "#262626")
        static let shopButton = UIColor(hexString: "#15B742")
        
    }
    
    // MARK: - String Section
    enum Strings {
        static let rateStar = "RateStar"
        static let orderAction = "OrderProduct"
        static let favoritesAction = "FavoriteProduct"
        static let gridButton = "Grid"
    }
    
    // MARK: - Image Section
    enum Images {
        static let rateStar = UIImage(systemName: "RateStar")
        static let listButton = UIImage(systemName: "List")
        static let gridButton = UIImage(systemName: "Grid")
    }
}
