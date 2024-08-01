//
//  AddPasswordView.swift
//  BlahBlahChatApp
//
//  Created by Andrew Hardin on 8/1/24.
//

import SwiftUI

struct AddPasswordView: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject private var registerVM : RegistrationViewModel
    @State private var password = ""
    var body: some View {
        VStack(spacing: 12) {
// MARK: - Title
            Text(AddPasswordConst.addPassword)
                .font(.boldTitle)
                .padding(.top)
// MARK: - Caption 
            Text(AddPasswordConst.addPasswordCaption)
                .font(.mediumCaption)
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal,24)
// MARK: - Password Textfield
            VStack (alignment: .leading) {
                Text(AddPasswordConst.password)
                    .font(.mediumCaption)
                    .foregroundColor(.init(hex: "24786D"))
                
                SecureField("",text: $password)
                    .modifier(MailAndPasswordTextField())
            }
            .padding(.horizontal,15)
            .padding(.top)
            
            NavigationLink { 
                CompleteSignUpView()
                    .navigationBarBackButtonHidden()
            } label: { 
                Text("Next")
                    .font(.mediumCaption)
                    .foregroundColor(.init(hex: "24786D"))
            }
            .frame(width: (UIScreen.main.bounds.width - 60), height: 60)
            .background(Color.init(hex: "F3F6F6"))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding(.top,50)
            
            Spacer()
        }
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()
                    }
            }
        }
    }
}

#Preview {
    AddPasswordView()
}
