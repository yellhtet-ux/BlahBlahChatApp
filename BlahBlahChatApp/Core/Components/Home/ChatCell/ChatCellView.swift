//
//  ChatCellView.swift
//  BlahBlahChatApp
//
//  Created by Andrew Hardin on 8/4/24.
//

import SwiftUI

struct ChatCellView: View {
    var userModel : UserModel
    var body: some View {
        HStack(spacing:16){
// MARK: - Profile Image
            AsyncImage(url: userModel.profileImage) { image in
                image
                    .resizable()
                    .scaledToFill()
                    .frame(width: 52, height: 52)
                    .clipShape(Circle())
            } placeholder: {
                Image(systemName: "photo.fill")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 52, height: 52)
                    .foregroundColor(Color.mainThemeColor)
                    .clipShape(Circle())
            }
            
// MARK: - Name and latest message
            VStack (alignment: .leading,spacing: 8) {
                Text(userModel.name)
                    .font(.boldTitle)
                    .foregroundColor(.black)
                Text(userModel.messages.last?.message ?? "")
                    .font(.placeholderMesage)
                    .foregroundColor(.gray)
                    .lineLimit(1)
            }
            
            Spacer()
// MARK: - Message arrived minutes and unseen message count
            
            VStack (alignment: .trailing,spacing: 10) {
                #warning("Need to change Message arrive time stamp")
                Text("2 mins ago") 
                    .font(.smallCaption)
                    .foregroundColor(.gray)
                Text("2")
                    .font(.mediumCaption)
                    .foregroundColor(.white)
                    .padding(5)
                    .background(.red)
                    .clipShape(Circle()) 
            }
            
        } // -> Main HStack
        .padding(.horizontal,10)
        .frame(width: (UIScreen.main.bounds.width), alignment: .leading)
        
    }
}

#Preview {
    ChatCellView(userModel: UserModel.MOCK_DATA[0])
}
