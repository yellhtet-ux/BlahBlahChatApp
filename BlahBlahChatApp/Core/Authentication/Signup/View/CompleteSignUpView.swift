//
//  CompleteSignUpView.swift
//  BlahBlahChatApp
//
//  Created by Andrew Hardin on 8/1/24.
//

import SwiftUI

struct CompleteSignUpView: View {
    var body: some View {
        VStack (spacing: 12){
            Spacer()
            Text(CompleteSignUpConst.welcomeTitle)
                .font(.boldTitle)
                .multilineTextAlignment(.center)
                .fontWeight(.semibold)
                .padding(.top)
            
            Text(CompleteSignUpConst.welcomCaption)
                .font(.mediumCaption)
                .multilineTextAlignment(.center)
                .padding(.horizontal,24)
            
            
            Button { 
                
            } label: { 
                Text(CompleteSignUpConst.completeSignUp)
                    .font(.mediumCaption)
                    .foregroundColor(.init(hex: "24786D"))
                
            }
            .frame(width: (UIScreen.main.bounds.width - 60), height: 60)
            .background(Color.init(hex: "F3F6F6"))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding(.vertical)
            .padding(.top,50)
            
            Spacer()
        }
    }
}

#Preview {
    CompleteSignUpView()
}
