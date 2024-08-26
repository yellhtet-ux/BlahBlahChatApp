//
//  AddEmailView.swift
//  BlahBlahChatApp
//
//  Created by Andrew Hardin on 8/1/24.
//

import SwiftUI

struct AddEmailView: View {
    @Environment(\.dismiss)var dismiss
    @EnvironmentObject private var viewModel : RegistrationViewModel
    var body: some View {
        VStack(spacing: 12) {
            // MARK: - Title
            Text(AddEmailConst.addEmail)
                .font(.boldTitle)
                .padding(.top)
            // MARK: - Caption            
            Text(AddEmailConst.addEmailCaption)
                .font(.mediumCaption)
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal,24)
            // MARK: - Email TextField
            VStack (alignment: .leading) {
                Text(AddEmailConst.email)
                    .font(.mediumCaption)
                    .foregroundColor(.mainThemeColor)
                
                TextField("",text: $viewModel.email)
                    .modifier(MailAndPasswordTextField())
            }
            .padding(.horizontal,15)
            .padding(.top)
            
            NavigationLink { 
                AddUserNameView()
                    .navigationBarBackButtonHidden()
            } label: { 
                Text("Next")
                    .font(.mediumCaption)
                    .foregroundColor(.mainThemeColor)
            }
            .frame(width: (UIScreen.main.bounds.width - 60), height: 60)
            .background(Color.authNextBtnBGColor)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding(.top,50)
            
            Spacer()
        }
        .toolbar {
            ToolbarItem (placement: .topBarLeading){
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
    AddEmailView()
}
