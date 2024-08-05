//
//  FontExtension.swift
//  BlahBlahChatApp
//
//  Created by Andrew Hardin on 8/1/24.
//

import Foundation
import SwiftUI

extension  Font {
  
    static var mediumTitle : Font {
        return Font.custom("CarosMedium", size: 20)
    }  
    
    static var boldTitle : Font {
        return Font.custom("CarosBold", size: 20)
    }
    
    static var mediumCaption : Font {
        return Font.custom("CarosMedium", size: 15)
    }
    
    static var boldCaption : Font {
        return Font.custom("CarosBold", size: 15)
    }
    
    static var smallCaption: Font {
        return Font.custom("CarosMedium", size: 10)
    }

    static var boldSmallTitle : Font {
        return Font.custom("CarosBold", size: 12)
    }
    
    static var placeholderMesage: Font {
        return Font.custom("CarosMedium", size: 12)
    }
    
}
