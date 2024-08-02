//
//  MainTabView.swift
//  BlahBlahChatApp
//
//  Created by Andrew Hardin on 8/2/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
// MARK: - Home
            HomeView()
            .tabItem { 
                Image(systemName: "text.bubble")
                Text(MainTabConst.home)
                    .font(.boldTitle)
            }
// MARK: - Search
            Text("Search")
                .tabItem { 
                    Image(systemName: "magnifyingglass")
                    Text(MainTabConst.search)
                    .font(.boldTitle)
                }
// MARK: - Contacts
            Text("Contacts")
                .tabItem { 
                    Image(systemName: "person.crop.circle.fill")
                    Text(MainTabConst.contacts)
                    .font(.boldTitle)
                }
// MARK: - Settings
            Text("Settings")
                .tabItem { 
                    Image(systemName: "gearshape.fill")
                    Text(MainTabConst.setting)
                    .font(.boldTitle)
                }
        }
        .tint(.mainThemeColor)
    }
}

#Preview {
    MainTabView()
}
