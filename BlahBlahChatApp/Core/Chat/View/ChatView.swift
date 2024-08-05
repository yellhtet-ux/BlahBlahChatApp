//
//  ChatView.swift
//  BlahBlahChatApp
//
//  Created by Andrew Hardin on 8/2/24.
//

import SwiftUI

struct ChatView: View {
    @Environment (\.dismiss) var dismiss
    var userModel : UserModel
    var messageModel : [MessageModel]
    var body: some View {
        VStack {
            ChatTitleRowView(userModel: userModel)
            
            ScrollView {
                ForEach(messageModel, id: \.self) { messages in
                    MessageBubbleView(message: MessageModel(id: messages.id, message: messages.message, isReceived: messages.isReceived, timestamp: messages.timestamp))
                }
            }
            .padding(.top,10)
            .background(Color.chatScrollColor)
            .cornerRadius(30, corners: [.topLeft,.topRight])
            
            
            ChatMessageField()
        }
        .background(Color.chatMainBGColor)
    }
}

#Preview {
    ChatView(userModel: UserModel.MOCK_DATA[0], messageModel: UserModel.MOCK_DATA[0].messages)
}
