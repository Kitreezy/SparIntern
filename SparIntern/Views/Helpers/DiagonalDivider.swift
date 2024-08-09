//
//  DiagonalDivider.swift
//  SparIntern
//
//  Created by Artem Rodionov on 09.08.2024.
//

import SwiftUI

struct DiagonalDivider: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        
        return path
    }
}
