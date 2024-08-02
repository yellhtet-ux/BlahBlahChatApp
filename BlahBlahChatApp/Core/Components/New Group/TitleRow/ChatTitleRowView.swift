//
//  ChatTitleRowView.swift
//  BlahBlahChatApp
//
//  Created by Andrew Hardin on 8/2/24.
//

import SwiftUI

struct ChatTitleRowView: View {
    let testURL = URL(string: "https://images.unsplash.com/photo-1508186225823-0963cf9ab0de?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
    
    var body: some View {
        HStack (spacing: 15) {
            AsyncImage(url: testURL) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50,height: 50)
                    .clipShape(Circle())
            } placeholder: {
                ProgressView()
            }
            
            VStack (alignment: .leading,spacing: 8){
                Text("Madison Beer")
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
    ChatTitleRowView()
        .background (
            Color.authNextBtnBGColor
        )
}
