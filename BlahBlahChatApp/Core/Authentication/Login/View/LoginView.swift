//
//  LoginView.swift
//  BlahBlahChatApp
//
//  Created by Andrew Hardin on 7/31/24.
//

import SwiftUI

struct LoginView: View {
    @StateObject private var loginVM = LoginViewModel()
    var body: some View {
            VStack(spacing: 20) {
// MARK: - Title and Caption
                    VStack(spacing: 15) {
                        Text(LoginConst.loginTitle)
                            .font(.boldTitle)
                        Text(LoginConst.loginCaption)
                            .font(.mediumCaption)
                            .multilineTextAlignment(.center)
                    }
                    
// MARK: - Third party login         
                
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
                    
// MARK: - Login with Email and Password
                    VStack {
                        VStack(alignment: .leading) {
                            Text(LoginConst.yourEmail)
                                .foregroundColor(Color.init(hex: "24786D", alpha: 1))
                            TextField("", text: $loginVM.email)
                                .modifier(MailAndPasswordTextField())
                            }
                            .padding(.vertical,20)
                        VStack(alignment: .leading) {
                            Text(LoginConst.yourPassword)
                                .foregroundColor(Color.init(hex: "24786D", alpha: 1))
                            TextField("", text: $loginVM.password)
                                .modifier(MailAndPasswordTextField())
                            }   
                    }
                    .padding(.horizontal,10)
                    .padding(.bottom,50)
// MARK: - Login Buttons
                VStack {
                    Button(action: {
                        // Action goes in here!
                    }, label: {
                        Text(LoginConst.loginButton)
                            .font(.mediumTitle)
                            .foregroundColor(Color.init(hex: "797C7B"))
                    })
                    .frame(width: (UIScreen.main.bounds.width - 60), height: 60)
                    .background(Color.init(hex: "F3F6F6", alpha: 1))
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .padding(.vertical,15)
                    
                    
                    Button(action: {
                        // Action goes in here!
                    }, label: {
                        Text(LoginConst.forgotPassword)
                            .font(.mediumCaption)
                            .foregroundColor(.init(hex: "24786D"))
                    })
                }
        
                } 
        } // MAIN VSTACK 
}

#Preview {
    LoginView()
}
