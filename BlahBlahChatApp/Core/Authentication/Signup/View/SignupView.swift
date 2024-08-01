//
//  SignupView.swift
//  BlahBlahChatApp
//
//  Created by Andrew Hardin on 7/31/24.
//

import SwiftUI

struct SignupView: View {
    @Environment(\.dismiss)var dismiss
    @EnvironmentObject private var registerVM : RegistrationViewModel
    var body: some View {
        NavigationStack {
            VStack (spacing:25){
                // MARK: - Logo
                Image(.blahLogo)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 50)
                
                // MARK: - Title and Caption
                Text(SignupConstant.signUpTitle)
                    .font(.boldTitle)
                Text(SignupConstant.signUpCaption)
                    .font(.mediumCaption)
                    .multilineTextAlignment(.center)
                
                // MARK: - Third party sign up
                HStack (spacing: 20) {
                    
                    /// Google 
                    Button(action: {
                        // Action in Here
                    }, label: {
                        ThirdPartyLoginView(imageName: LoginImageEnum.gmail.rawValue)
                    })
                    
                    /// Apple
                    Button(action: {
                        // Action in Here
                    }, label: {
                        ThirdPartyLoginView(imageName: LoginImageEnum.apple.rawValue)
                    })
                }
                
                
                // MARK: - Divider
                HStack (spacing: 10) {
                    Rectangle()
                        .fill(.gray.opacity(0.5))
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                    Text("OR")
                        .foregroundColor(.gray.opacity(0.5))
                    Rectangle()
                        .fill(.gray.opacity(0.5))
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                }
                .padding(.horizontal,10)
                
                
                // MARK: - Sign Up with Email
                NavigationLink {
                    AddEmailView()
                        .navigationBarBackButtonHidden()
                }label: {
                    Text(SignupConstant.signUpWithEmail)
                        .font(.mediumCaption)
                        .foregroundColor(.init(hex: "24786D"))
                }
                .frame(width: (UIScreen.main.bounds.width - 60), height: 60)
                .background(Color.init(hex: "F3F6F6"))
                .clipShape(RoundedRectangle(cornerRadius: 10))
                
                // MARK: - Already have account?
                NavigationLink { 
                    LoginView()
                        .navigationBarBackButtonHidden()
                } label: { 
                    HStack {
                        Text(SignupConstant.alreadyHaveAcc) 
                            .font(.mediumCaption)
                            .foregroundColor(.black)
                        Button(action: {
                            
                        }, label: {
                            Text(SignupConstant.login) 
                                .font(.boldTitle)
                                .foregroundColor(.init(hex: "24786D"))
                        })
                    }
                }
            }
        }
    }
}

#Preview {
    SignupView()
}
