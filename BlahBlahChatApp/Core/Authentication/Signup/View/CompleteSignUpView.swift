//
//  CompleteSignUpView.swift
//  BlahBlahChatApp
//
//  Created by Andrew Hardin on 8/1/24.
//

import SwiftUI

struct CompleteSignUpView: View {
    @EnvironmentObject private var viewModel : RegistrationViewModel
    var body: some View {
        VStack (spacing: 12){
            Spacer()
            Text("\(CompleteSignUpConst.welcomeTitle) \(viewModel.userName)")
                .font(.boldTitle)
                .multilineTextAlignment(.center)
                .fontWeight(.semibold)
                .padding(.top)
            
            Text(CompleteSignUpConst.welcomCaption)
                .font(.mediumCaption)
                .multilineTextAlignment(.center)
                .padding(.horizontal,24)
            
            
            Button { 
                Task {
                    try await viewModel.createUser()
                }
            } label: { 
                Text(CompleteSignUpConst.completeSignUp)
                    .font(.mediumCaption)
                    .foregroundColor(.white)
                
            }
            .frame(width: (UIScreen.main.bounds.width - 60), height: 50)
            .background(Color.mainThemeColor)
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
