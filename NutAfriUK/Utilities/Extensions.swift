//
//  Extensions.swift
//  NutAfriUK
//
//  Created by Nene ogba on 23/07/2023.
//

import Foundation
import SwiftUI

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {
            
            ZStack(alignment: alignment) {
                placeholder().opacity(shouldShow ? 1 : 0)
                self
            }
        }
}

extension Color {
    static let primaryColor = Color("ColorPrimary")
    static let grayColor = Color("ColorGray")
    static let greyColor = Color("ColorGrey")
    static let darkGreyColor = Color("ColorDarkGrey")
    static let grayColorTwo = Color("ColorGrayTwo")
    static let lightprimaryColor = Color("LightColorPrimary")
    
}



