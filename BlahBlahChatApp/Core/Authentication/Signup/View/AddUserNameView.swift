//
//  AddUserNameView.swift
//  BlahBlahChatApp
//
//  Created by Andrew Hardin on 8/1/24.
//

import SwiftUI 


struct AddUserNameView : View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject private var registerVM : RegistrationViewModel
    @State private var userName = ""
    var body: some View {
        VStack (spacing: 12) {
// MARK: - Title
            Text(AddUserNameConst.addUserNameTitle)
                .font(.boldTitle)
                .padding(.top)
// MARK: - Caption 
            Text(AddUserNameConst.addUserNameCaption)
                .font(.mediumCaption)
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal,24)
// MARK: - Username Textfield
            VStack (alignment: .leading) {
                Text(AddUserNameConst.userName)
                    .font(.mediumCaption)
                    .foregroundColor(.mainThemeColor)
                
                TextField("",text: $userName)
                    .modifier(MailAndPasswordTextField())
            }
            .padding(.horizontal,15)
            .padding(.top)
            
            NavigationLink { 
               AddPasswordView()
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
    AddUserNameView()
}
