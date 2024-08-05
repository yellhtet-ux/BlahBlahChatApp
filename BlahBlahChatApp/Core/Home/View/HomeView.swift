//
//  HomeView.swift
//  BlahBlahChatApp
//
//  Created by Andrew Hardin on 8/2/24.
//

import SwiftUI

struct HomeView: View {
    @State private var selectedChatCell: UserModel?
    var model : [UserModel] = UserModel.MOCK_DATA
    var body: some View {
        NavigationStack {
            VStack(spacing: 15) {
                // MARK: - Home Title Row
                HomeTitleRowView()
                // MARK: - My Day
                ScrollView (.horizontal,showsIndicators: false){
                    HStack(spacing: 20){
                        ForEach(model,id: \.self) { userMyDay in
                            MyDayView(userModel: userMyDay)
                        }
                    }
                    .padding(.horizontal,10)
                }
                .frame(height: 90)
                // MARK: - Chat Session                
                ScrollView(showsIndicators:false) {
                    ForEach(model,id: \.self) { user in
                        ChatCellView(userModel: user)
                            .frame(height: 80)
                            .onTapGesture {
                                selectedChatCell = user
                            }
                            .fullScreenCover(item: $selectedChatCell) { user in
                                ChatView(userModel: user, messageModel: user.messages)
                            }
                    }
                }
                .padding(.top,10)
                .background(Color.chatScrollColor)
                .cornerRadius(30, corners: [.topLeft,.topRight])
            } // -> Main VStack
            .background(Color.homeBGColor)
        } // -> Navigation Stack
    }
}

#Preview {
    HomeView()
}
