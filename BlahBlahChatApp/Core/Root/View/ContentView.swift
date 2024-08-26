//
//  ContentView.swift
//  BlahBlahChatApp
//
//  Created by Andrew Hardin on 7/30/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var contentVM = ContentViewModel()
    @StateObject private var registrationVM = RegistrationViewModel()
    var body: some View {
        Group {
            if contentVM.userSession == nil {
                LoginView()
                    .environmentObject(registrationVM)
            }else {
                MainTabView()
            }
        }
    }
}

#Preview {
    ContentView()
}
