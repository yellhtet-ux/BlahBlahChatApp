//
//  ColorExtension.swift
//  BlahBlahChatApp
//
//  Created by Andrew Hardin on 8/1/24.
//

import Foundation
import SwiftUI

extension Color  {
    static var mainThemeColor : Color {
        return Color("mainColor")
    }
    
    static var ownMsgBGColor: Color {
        return Color("ownMsgBGColor")
    }
    
    static var otherMsgBGColor: Color {
        return Color("otherMsgBGColor")
    }
    
    static var authButtonColor: Color {
        return Color("buttonBGColor")
    }
    
    static var authButtonLabelColor : Color {
        return Color("authTextColor")
    }
    
    static var authNextBtnBGColor: Color {
        return Color("authNextBtnBGColor")
    }
    
    static var mainBGColor : Color {
        return Color ("mainBGColor")
    }
    
    static var chatMainBGColor: Color {
        return Color("chatMainBGColor")
    }
    
    static var chatScrollColor : Color {
        return Color("chatScrollColor")
    }
    
    static var homeBGColor : Color {
        return Color("homeBGColor")
    }
    
    static var homeSearchBorderColor : Color {
        return Color("homeSearchBorderColor")
    }
    
    static var homeSearchBGColor : Color {
        return Color("homeSearchBGColor")
    }
}


extension UIColor {
    static var unselectedTabBarColor : UIColor {
        return UIColor(named: "mainBGColor") ?? .white
    }
}
