//
//  RegistrationViewModel.swift
//  BlahBlahChatApp
//
//  Created by Andrew Hardin on 8/1/24.
//

import Foundation

class RegistrationViewModel : ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var userName = ""
    
    private let authService = AuthService.shared
    
    func createUser () async throws {
       try await authService.createUser(withMail: email, userName: userName, password: password)
    }
    
}
