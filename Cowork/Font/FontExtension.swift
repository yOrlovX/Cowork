//
//  FontExtension.swift
//  Cowork
//
//  Created by Yaroslav Orlov on 04.03.2025.
//

import SwiftUI

enum Montserrat: String {
    case bold = "Montserrat-Bold"
    case light = "Montserrat-Light"
    case medium = "Montserrat-Medium"
    case regular = "Montserrat-Regular"
    case semiBold = "Montserrat-SemiBold"
    case thin = "Montserrat-Thin"

    func size(size: CGFloat) -> Font {
        Font.custom(self.rawValue, size: size)
    }
}
