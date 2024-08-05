//
//  ChatTitleRowView.swift
//  BlahBlahChatApp
//
//  Created by Andrew Hardin on 8/2/24.
//

import SwiftUI

struct ChatTitleRowView: View {
    @Environment (\.dismiss) var dismiss
    var userModel : UserModel
    var body: some View {
        HStack (spacing: 15) {
            Button {
                dismiss()
            }label: {
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .foregroundColor(.black)
            }
            
            AsyncImage(url: userModel.profileImage) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50,height: 50)
                    .clipShape(Circle())
            } placeholder: {
                ProgressView()
            }
            
            VStack (alignment: .leading,spacing: 8){
                Text(userModel.name)
                    .font(.boldTitle) 
                
                Text("Active now")
                    .font(.mediumCaption)
                    .foregroundStyle(Color.authButtonLabelColor)
            }
            .frame(maxWidth: .infinity,alignment: .leading)
            
            Button(action: {
                // Action Goes in Here
            }, label: {
                Image(systemName: "phone.fill")
                    .foregroundColor(Color.mainThemeColor)
                    .padding(8)
                    .imageScale(.large)
                    .background(.white)
                    .clipShape(Circle())
            })
        }
        .padding()
    }
}

#Preview {
    ChatTitleRowView(userModel: UserModel.MOCK_DATA[0])
        .background (
            Color.authNextBtnBGColor
        )
}
