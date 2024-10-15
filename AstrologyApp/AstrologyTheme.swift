//
//  AstrologyTheme.swift
//  AstrologyApp
//
//  Created by Benny Li on 2024-10-14.
//

import Foundation
import SwiftUI

let themeBackgroundMain = LinearGradient(
    gradient: Gradient(colors: [Color.green.opacity(0.5), Color.green]),
    startPoint: .topLeading,
    endPoint: .bottomTrailing
)

let themeBackgroundSecondary = LinearGradient(
    gradient: Gradient(colors: [Color.red.opacity(0.9), Color.red]),
    startPoint: .leading,
    endPoint: .trailing
)

let themeBackgroundThird = Color.yellow.opacity(0.8)

let themeBackgroundDetail = LinearGradient(
    gradient: Gradient(colors: [Color.orange.opacity(0.7), Color.blue.opacity(0.3)]),
    startPoint: .top,
    endPoint: .bottom
)
