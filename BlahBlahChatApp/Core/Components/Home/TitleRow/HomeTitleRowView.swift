//
//  HomeTitleRowView.swift
//  BlahBlahChatApp
//
//  Created by Andrew Hardin on 8/3/24.
//

import SwiftUI

struct HomeTitleRowView: View {
    let testURL = URL(string: "https://images.unsplash.com/photo-1508186225823-0963cf9ab0de?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
    var body: some View {
        HStack{
            HStack(spacing: 20) {
                // MARK: - Search Button
                            Button {
                                // Action goes in here
                            }label: {
                                Image(systemName: "magnifyingglass")
                                    .imageScale(.large)
                                    .foregroundColor(.white)
                                    .padding()
                                    .background(Color.homeSearchBGColor)
                                    .clipShape(Circle())
                                    .overlay {
                                        Circle()
                                            .stroke(.homeSearchBorder, lineWidth: 1)
                                    }
                                    
                            }
                
                        Spacer()
                            
                // MARK: - Title Label
                            Text("Home")
                                .font(.boldTitle)
                                .foregroundColor(.white)
                
                        Spacer()
                // MARK: - Profile Button
                            Button {
                                
                            }label: {
                                AsyncImage(url: testURL) { image in
                                    image
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 50, height: 50)
                                        .clipShape(Circle())
                                } placeholder: {
                                    Image(systemName: "photo.fill")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 50, height: 50)
                                        .foregroundColor(Color.mainThemeColor)
                                        .clipShape(Circle())
                                }
                            }
            }
            .padding(.horizontal,10)
            .frame(width: (UIScreen.main.bounds.width), height: 80,alignment: .center)
        }
    }
}

#Preview {
    HomeTitleRowView()
        .background (Color.homeBGColor)
}
