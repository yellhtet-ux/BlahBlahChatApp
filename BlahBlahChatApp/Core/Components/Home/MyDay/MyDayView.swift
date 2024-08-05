//
//  MyDayView.swift
//  BlahBlahChatApp
//
//  Created by Andrew Hardin on 8/3/24.
//

import SwiftUI

struct MyDayView: View {
    var userModel : UserModel
    var body: some View {
        ZStack {
            Button {
                // Action goes in here!
            }label: {
                AsyncImage(url: userModel.profileImage) {image in
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 70, height: 70)
                        .clipShape(Circle())
                }placeholder: {
                    Image(systemName: "photo.fill")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 70, height: 70)
                        .foregroundColor(Color.mainThemeColor)
                        .clipShape(Circle())
                    
                }
                .overlay{
                    Image(systemName: "plus")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 10, height: 10)
                        .foregroundColor(.gray)
                        .padding(5)
                        .background(.white)
                        .clipShape(Circle())
                        .offset(CGSize(width: 25, height: 20))
                } 
            }
        }
    }
}

#Preview {
    MyDayView(userModel: UserModel.MOCK_DATA[0])
}
