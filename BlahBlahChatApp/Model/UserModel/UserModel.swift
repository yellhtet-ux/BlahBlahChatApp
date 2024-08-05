//
//  UserModel.swift
//  BlahBlahChatApp
//
//  Created by Andrew Hardin on 8/4/24.
//

import Foundation



struct UserModel : Identifiable,Codable, Hashable{
    var id: String
    var name : String
    var userName : String
    var messages : [MessageModel]
    var profileImage: URL?
    
    static let MOCK_DATA = [
        UserModel(id: "1", name: "Justin Bieber", userName: "justin1", messages: [
            .init(id: "1", message: "Hola", isReceived: true, timestamp: Date()),
            .init(id: "2", message: "Can we be friend", isReceived: true, timestamp: Date())
        ], profileImage: URL(string: "https://images.unsplash.com/photo-1568215833629-b95d2e6e83be?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8SnVzdGluJTIwQmllYmVyfGVufDB8fDB8fHww")),
        UserModel(id: "2", name: "Andrew Garfield", userName: "andrew1", messages: [
            .init(id: "1", message: "Hey buddy", isReceived: true, timestamp: Date()),
            .init(id: "2", message: "sup?", isReceived: true, timestamp: Date())
        ], profileImage: URL(string: "https://images.unsplash.com/photo-1601127939825-a1416676187c?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8c3BpZGVybWFufGVufDB8fDB8fHww")),
        UserModel(id: "3", name: "Bat Man", userName: "bruce22", messages: [
            .init(id: "1", message: "Hey Yoo!", isReceived: true, timestamp: Date()),
            .init(id: "2", message: "Who are you?", isReceived: true, timestamp: Date())
        ], profileImage: URL(string: "https://images.unsplash.com/photo-1612916628677-475f676a6adf?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8QmF0bWFufGVufDB8fDB8fHww")),
        UserModel(id: "4", name: "Iron Man", userName: "stark1", messages: [
            .init(id: "1", message: "I have a task to save world", isReceived: true, timestamp: Date()),
            .init(id: "2", message: "Can you join with me?", isReceived: true, timestamp: Date())
        ], profileImage: URL(string: "https://images.unsplash.com/photo-1623984109227-443f400446f0?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8SXJvbiUyME1hbnxlbnwwfHwwfHx8MA%3D%3D")),
        UserModel(id: "5", name: "Dornal Trump", userName: "trump1", messages: [
            .init(id: "1", message: "Hey kiddo", isReceived: true, timestamp: Date()),
            .init(id: "2", message: "Can you borrow 3M for just 3 days?", isReceived: true, timestamp: Date())
        ], profileImage: URL(string: "https://images.unsplash.com/photo-1580128660010-fd027e1e587a?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8RG9ybmFsJTIwVHJ1bXB8ZW58MHx8MHx8fDA%3D")),
        UserModel(id: "6", name: "John Doe", userName: "doe22", messages: [
            .init(id: "1", message: "Bonjour", isReceived: true, timestamp: Date()),
            .init(id: "2", message: "How are you?", isReceived: true, timestamp: Date())
        ], profileImage: URL(string: "https://plus.unsplash.com/premium_photo-1671656349322-41de944d259b?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cG9ydHJhaXR8ZW58MHx8MHx8fDA%3D")),
    ]
}
