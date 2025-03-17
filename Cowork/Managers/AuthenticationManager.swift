//
//  AuthenticationManager.swift
//  Cowork
//
//  Created by Yaroslav Orlov on 11.03.2025.
//

import Foundation
import FirebaseAuth

struct AuthenticationDatResultModel {
    let uid: String
    let email: String?
    let photoUrl: String?
    
    init(user: User) {
        self.uid = user.uid
        self.email = user.email
        self.photoUrl = user.photoURL?.absoluteString
    }
}

final class AuthenticationManager: AuthenticationManagerProtocol {
    func signIn(email: String, password: String) async throws -> AuthenticationDatResultModel {
        let authResult = try await Auth.auth().signIn(withEmail: email, password: password)
        return AuthenticationDatResultModel(user: authResult.user)
    }
    
    
    func createUser(email: String, password: String) async throws -> AuthenticationDatResultModel {
       let authDataResult = try await Auth.auth().createUser(withEmail: email, password: password)
        return  AuthenticationDatResultModel(user: authDataResult.user)
    }
    
    func getUser() throws -> AuthenticationDatResultModel {
        guard let user = Auth.auth().currentUser else {
            throw ValidationError.userNotFound
        }
        return AuthenticationDatResultModel(user: user)
    }
}

protocol AuthenticationManagerProtocol {
    func createUser(email: String, password: String) async throws -> AuthenticationDatResultModel
    func signIn(email: String, password: String) async throws -> AuthenticationDatResultModel
    func getUser() throws -> AuthenticationDatResultModel
}
