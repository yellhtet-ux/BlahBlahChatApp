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
        }
    }
}

#Preview {
    MyDayView(userModel: UserModel.MOCK_DATA[0])
}
