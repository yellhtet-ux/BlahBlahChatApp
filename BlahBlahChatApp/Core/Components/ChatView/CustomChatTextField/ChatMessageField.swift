//
//  ChatMessageField.swift
//  BlahBlahChatApp
//
//  Created by Andrew Hardin on 8/2/24.
//

import SwiftUI

struct ChatMessageField: View {
    @State private var message = ""
    var body: some View {
        HStack {
            Button {
                // Attachment action goes in here!
            }label: {
                Image(systemName: "paperclip")
                    .imageScale(.large)
                    .tint(Color.mainThemeColor)
                    .padding(10)
                    .clipShape(Circle())
            }
            
            HStack {
                CustomTextField(placeholder: Text(ChatConst.writeMessage), text: $message)
                
                Button {
                    // Sticker action goes in here!
                }label: {
                    Image("sticker")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 25, height: 25)
                }
            }
            .padding()
            .background(Color.authNextBtnBGColor)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            
            Button {
                // Message sending action goes in here
                message = ""
            } label: {
                Image(systemName: "paperplane.fill")
                    .tint(Color.mainThemeColor)
                    .padding(10)
                    .background(Color.white)
                    .clipShape(Circle())
            }
        }
        .padding(.horizontal)
        .padding(.vertical,10)
    }
}

#Preview {
    ChatMessageField()
}

struct CustomTextField : View {
    var placeholder: Text 
    @Binding var text: String
    var commit : () -> () = {}
//    var editingChanged: (Bool) -> () =  {_ in}
    
    
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {
                placeholder
                    .opacity(0.5)
            }

            TextField("",text: $text)
                .onSubmit() {
                    commit()
                }
        }
    }
}
