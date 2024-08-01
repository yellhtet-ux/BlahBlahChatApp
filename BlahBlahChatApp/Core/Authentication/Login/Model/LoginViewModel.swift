//
//  LoginViewModel.swift
//  BlahBlahChatApp
//
//  Created by Andrew Hardin on 8/1/24.
//

import Foundation


class LoginViewModel : ObservableObject {
    @Published var email : String = ""
    @Published var password : String = ""
}
