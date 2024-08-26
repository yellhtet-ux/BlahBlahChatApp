//
//  ContentViewModel.swift
//  BlahBlahChatApp
//
//  Created by Andrew Hardin on 8/5/24.
//

import Foundation
import Combine
import FirebaseAuth

class ContentViewModel : ObservableObject {
    @Published var userSession : FirebaseAuth.User? 
    let service = AuthService.shared
    private var cancellable =  Set<AnyCancellable>()
     
    init () {
        setUpUserSubscriber()
    }
    
   
    private func setUpUserSubscriber () {
        service.$userSession.sink { [weak self] user in
            self?.userSession = user
        }
        .store(in: &cancellable)
    }
}
