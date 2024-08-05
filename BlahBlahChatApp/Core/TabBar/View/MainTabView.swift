//
//  MainTabView.swift
//  BlahBlahChatApp
//
//  Created by Andrew Hardin on 8/2/24.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedIndex = 0
    init () {
        setupTabBarAppearance() 
    }
    var body: some View {
        TabView {
            // MARK: - Home
            HomeView()
                .onAppear {
                    selectedIndex = 0
                }
                .tabItem { 
                    Image(systemName: "text.bubble")
                    Text(MainTabConst.home)
                        .font(.boldTitle)
                }
                .tag(0)
            // MARK: - Search
            Text("Search")
                .onAppear {
                    selectedIndex = 1
                }
                .tabItem { 
                    Image(systemName: "magnifyingglass")
                    Text(MainTabConst.search)
                        .font(.boldTitle)
                }
                .tag(1)
            // MARK: - Contacts
            Text("Contacts")
                .onAppear {
                    selectedIndex = 2
                }
                .tabItem { 
                    Image(systemName: "person.crop.circle.fill")
                    Text(MainTabConst.contacts)
                        .font(.boldTitle)
                }
                .tag(2)
            // MARK: - Settings
            Text("Settings")
                .onAppear {
                    selectedIndex = 3
                }
                .tabItem { 
                    Image(systemName: "gearshape.fill")
                    Text(MainTabConst.setting)
                        .font(.boldTitle)
                }
                .tag(3)
        }
        .tint(.mainThemeColor)
    }
    
    // MARK: - Customize the unselected item appearance
    private func setupTabBarAppearance() {
        let tabBarAppearance = UITabBarAppearance()
        let unselectedItemColor = UIColor.unselectedTabBarColor
        tabBarAppearance.stackedLayoutAppearance.normal.iconColor = unselectedItemColor
        tabBarAppearance.stackedLayoutAppearance.normal.titleTextAttributes = [.foregroundColor: unselectedItemColor]
        
        UITabBar.appearance().standardAppearance = tabBarAppearance
    }
}

#Preview {
    MainTabView()
}
