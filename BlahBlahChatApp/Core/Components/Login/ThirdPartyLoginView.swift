//
//  ThirdPartyLoginView.swift
//  BlahBlahChatApp
//
//  Created by Andrew Hardin on 7/31/24.
//

import SwiftUI

struct ThirdPartyLoginView: View {
    var imageName : String = ""
    var body: some View {
        ZStack {
            Circle()
                .stroke(.black, lineWidth: 1.0)
                .frame(width: 60, height: 60)
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
                .clipShape(Circle())
        }
    }
}

#Preview {
    ThirdPartyLoginView()
}
