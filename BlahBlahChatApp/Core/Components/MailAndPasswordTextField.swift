//
//  MailAndPasswordTextField.swift
//  BlahBlahChatApp
//
//  Created by Andrew Hardin on 8/1/24.
//

import SwiftUI

struct MailAndPasswordTextField: ViewModifier {
    func body(content: Content) -> some View {
        content
            Rectangle()
            .frame(height: 0.5)
            .foregroundColor(.init(hex: "24786D", alpha: 1))
    }
}
