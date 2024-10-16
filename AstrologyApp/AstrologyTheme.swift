//
//  AstrologyTheme.swift
//  AstrologyApp
//
//  Created by Benny Li on 2024-10-14.
//

import Foundation
import SwiftUI

let themeBackgroundMain = LinearGradient(
    gradient: Gradient(colors: [Color.blue.opacity(0.3), Color.blue]),
    startPoint: .topLeading,
    endPoint: .bottomTrailing
)

let themeBackgroundSecondary = LinearGradient(
    gradient: Gradient(colors: [Color.purple.opacity(0.85), Color.purple]),
    startPoint: .leading,
    endPoint: .trailing
)

let themeBackgroundThird = Color.yellow.opacity(0)

let themeBackgroundDetail = LinearGradient(
    gradient: Gradient(colors: [Color.purple.opacity(0.7), Color.blue.opacity(0.7)]),
    startPoint: .top,
    endPoint: .bottom
)
