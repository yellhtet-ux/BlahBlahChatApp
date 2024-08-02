//
//  MessageModel.swift
//  BlahBlahChatApp
//
//  Created by Andrew Hardin on 8/2/24.
//

import Foundation


struct MessageModel : Identifiable,Codable {
    var id: String
    var message: String 
    var isReceived: Bool 
    var timestamp : Date
    
    
    static let MOCK_MESSAGE = MessageModel(id: "1234", message: "I've been learning Swift and iOS Development for almost 3years", isReceived: true, timestamp: Date())
}
