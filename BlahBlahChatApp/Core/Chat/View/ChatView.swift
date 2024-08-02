//
//  ChatView.swift
//  BlahBlahChatApp
//
//  Created by Andrew Hardin on 8/2/24.
//

import SwiftUI

struct ChatView: View {
    @Environment (\.dismiss) var dismiss
    let tempMessageArray = ["Hola","Hi","You look amazing","Your songs are really amazing I like it the most."]
    var body: some View {
        VStack {
            ChatTitleRowView()
            
            ScrollView {
                ForEach(tempMessageArray, id: \.self) { message in
                    MessageBubbleView(message: MessageModel(id: "123", message: message, isReceived: false, timestamp: Date()))
                }
            }
            .padding(.top,10)
            .background(Color.chatScrollColor)
            .cornerRadius(30, corners: [.topLeft,.topRight])
            .ignoresSafeArea()
            
            ChatMessageField()
        }
        .background(Color.chatMainBGColor)
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
    ChatView()
}
