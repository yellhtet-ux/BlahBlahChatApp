//
//  AddEmailView.swift
//  BlahBlahChatApp
//
//  Created by Andrew Hardin on 8/1/24.
//

import SwiftUI

struct AddEmailView: View {
    @Environment(\.dismiss)var dismiss
    @EnvironmentObject private var registerVM : RegistrationViewModel
    @State private var email = ""
    var body: some View {
        VStack(spacing: 12) {
            Text(AddEmailConst.addEmail)
                .font(.boldTitle)
                .padding(.top)
            
            Text(AddEmailConst.addEmailCaption)
                .font(.mediumCaption)
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal,24)
            
            VStack (alignment: .leading) {
                Text(AddEmailConst.email)
                    .font(.mediumCaption)
                
                TextField("",text: $email)
                    .modifier(MailAndPasswordTextField())
            }
            .padding(.horizontal,15)
            
            NavigationLink { 
               // Action goes in here!
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
