//
//  MessageBubbleView.swift
//  BlahBlahChatApp
//
//  Created by Andrew Hardin on 8/2/24.
//

import SwiftUI

struct MessageBubbleView: View {
    var message : MessageModel
    @State private var showTime : Bool = false
    var body: some View {
        VStack(alignment: message.isReceived ? .leading : .trailing) {
            HStack {
                Text(message.message)
                    .padding()
                    .foregroundColor(message.isReceived ? .black : .white)
                    .background(
                        message.isReceived ? Color.otherMsgBGColor  : Color.ownMsgBGColor 
                    )
                    .clipShape(RoundedRectangle(cornerRadius: 25))
            }
            .frame(minWidth: 300,alignment: message.isReceived ? .leading : .trailing)
            .onTapGesture {
                showTime.toggle()
            }
            
            if showTime {
                Text("\(message.timestamp.formatted(.dateTime.hour().minute()))")
                    .font(.mediumCaption)
                    .foregroundColor(message.isReceived ? .authButtonLabelColor : .mainThemeColor)
                    .padding(message.isReceived ? .leading : .trailing, 25)
            }
        }
        .frame(maxWidth: .infinity,alignment: message.isReceived ? .leading : .trailing)
        .padding(message.isReceived ? .leading : .trailing)
        .padding(.horizontal, 10)
    }
}

#Preview {
    MessageBubbleView(message: MessageModel.MOCK_MESSAGE)
}
