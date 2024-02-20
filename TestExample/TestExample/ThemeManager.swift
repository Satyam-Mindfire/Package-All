//
//  ThemeManager.swift
//  TestExample
//
//  Created by Satyam Tripathi on 20/02/24.
//

import Foundation
import SwiftUI
import MobileQuickLaunchKit
import MQLCoreUI

@available(iOS 13.0, *)
class ThemeManager: ObservableObject {
    init(){}
    
    /// Choose any pre-defined Theme object or create a new Theme object as per your need in Theme+Extensions.swift file
    /// Pre-defined themes are as follows: appTheme, theme1, theme2, theme3
    /// Colors are being initialized from the assets
    @Published var current: Theme = Theme(
        colors: MQLColors(
            primary: .red,
            secondary: .green,
            tertiary: .gray,
            buttonTextPrimary: .yellow,
            buttonTextSecondary: .black,
            placeholderText: .gray,
            backGroundPrimary: .purple,
            backGroundSecondary: .secondary,
            error: .red,
            warning: .yellow,
            success: .green,
            defaultColor: Color("Default"),
            borderColor: .blue
        ),
        typography: Typography(
            h1: Font.custom("Arial-BoldMT", size: 30), //Use for bold headers
            h2: Font.custom("Arial-BoldMT", size: 24),
            h3: Font.custom("Arial-BoldMT", size: 18),
            h4: Font.custom("Arial-BoldMT", size: 15), // Use for button text
            h5: Font.custom("Arial-BoldMT", size: 12),
            h6: Font.custom("Arial-BoldMT", size: 10),
            body1: Font.custom("ArialMT", size: 15), // Use for body text
            body2: Font.custom("ArialMT", size: 14),
            body3: Font.custom("ArialMT", size: 16)
        )
    )
    
}
