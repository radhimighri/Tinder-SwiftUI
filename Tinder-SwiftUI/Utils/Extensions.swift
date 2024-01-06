//
//  Extensions.swift
//  Tinder-SwiftUI
//
//  Created by Radhi MIGHRI on 08/03/2022.
//

import SwiftUI

//MARK: - View
extension View {
    @ViewBuilder
    func `if` <Transform: View>(
        _ condition: Bool,
        transform: (Self) -> Transform
    ) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
    }
}


//MARK: - Colors
extension Color {
    static let textPrimary = Color.gray.opacity(0.9)
    static let textSecondary = Color.gray.opacity(0.6)
    static let textTitle = Color.black.opacity(0.8)
    static let defaultBg = Color(.systemGray6).opacity(0.35)
    static let textFieldBG = Color(.systemGray6)

}
