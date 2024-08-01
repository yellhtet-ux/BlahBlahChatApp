//
//  ColorExtension.swift
//  BlahBlahChatApp
//
//  Created by Andrew Hardin on 8/1/24.
//

import Foundation
import SwiftUI

extension Color  {
    /// Initializes a `Color` from a hex code.
    /// - Parameter hex: The hex color code as a `String`.
       init(hex: String) {
           let hex = hex.trimmingCharacters(in: .whitespacesAndNewlines)
           let scanner = Scanner(string: hex)
           
           // Remove '#' if present
           if hex.hasPrefix("#") {
               scanner.currentIndex = hex.index(after: hex.startIndex)
           }
           
           var rgbValue: UInt64 = 0
           scanner.scanHexInt64(&rgbValue)
           
           let red = Double((rgbValue >> 16) & 0xFF) / 255.0
           let green = Double((rgbValue >> 8) & 0xFF) / 255.0
           let blue = Double(rgbValue & 0xFF) / 255.0
           
           self.init(red: red, green: green, blue: blue)
       }
    
    /// Initializes a `Color` from a hex code with an alpha value.
    /// - Parameters:
    ///   - hex: The hex color code as a `String`.
    ///   - alpha: The alpha value as a `Double`.
        init(hex: String, alpha: Double) {
            let hex = hex.trimmingCharacters(in: .whitespacesAndNewlines)
            let scanner = Scanner(string: hex)
            
            // Remove '#' if present
            if hex.hasPrefix("#") {
                scanner.currentIndex = hex.index(after: hex.startIndex)
            }
            
            var rgbValue: UInt64 = 0
            scanner.scanHexInt64(&rgbValue)
            
            let red = Double((rgbValue >> 16) & 0xFF) / 255.0
            let green = Double((rgbValue >> 8) & 0xFF) / 255.0
            let blue = Double(rgbValue & 0xFF) / 255.0
            
            self.init(red: red, green: green, blue: blue, opacity: alpha)
        }
}
