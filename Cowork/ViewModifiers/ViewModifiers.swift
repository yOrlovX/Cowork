//
//  ViewModifiers.swift
//  Cowork
//
//  Created by Yaroslav Orlov on 17.03.2025.
//

import SwiftUI

struct PrimaryTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .frame(height: 45)
            .background(Color.textfieldBackground)
            .cornerRadius(8)
    }
}

struct TextFieldLabelModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(Montserrat.semiBold.size(size: 12))
            .foregroundColor(.primaryDark)
    }
}

struct PrimaryButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .frame(height: 55)
            .frame(width: UIScreen.main.bounds.width - 40)
            .background(Color.primaryPurple)
            .cornerRadius(8)
    }
}
