//
//  AuthService.swift
//  BlahBlahChatApp
//
//  Created by Andrew Hardin on 8/5/24.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore
import FirebaseFirestoreCombineSwift

class AuthService  {
    
    @Published var userSession : FirebaseAuth.User? 
    
    static let shared = AuthService()
    
    init () {
        self.userSession = Auth.auth().currentUser
        
    }
    
    // MARK: - Authentication
    
    @MainActor
    func login (withMail email: String,password: String) async throws {
        do {
             let result = try await Auth.auth().signIn(withEmail: email, password: password)
             self.userSession = result.user
        }catch {
            print("DEBUG: User log in failed with error \(error.localizedDescription)")
        }
    }
    
    @MainActor
    func createUser (withMail email: String, userName: String, password: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
            await self.uploadUserData(id: result.user.uid, email: email, userName: userName)
        }catch {
            print("DEBUG: User registration failed with error \(error.localizedDescription)")
        }
    }
    
    func signOut () throws {
        try? Auth.auth().signOut()
        self.userSession = nil
    }
    
    // MARK: - User Datas Storing and Fetching
    
    private func uploadUserData (id uid: String, email: String, userName: String) async {
        let user = User(id: uid, userName: userName, email: email)
        guard let encodedUser = try? Firestore.Encoder().encode(user) else {return}
    }
    
    func loadUserData () async throws {
        
    }
}
