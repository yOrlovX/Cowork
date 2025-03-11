//
//  AuthenticationViewModel.swift
//  Cowork
//
//  Created by Yaroslav Orlov on 11.03.2025.
//

import SwiftUI

final class AuthenticationViewModel: ObservableObject {
    
    @Published var email: String = ""
    @Published var password: String = ""
    
    let authenticationManager: AuthenticationManagerProtocol
    
    init(authenticationManager: AuthenticationManager) {
        self.authenticationManager = authenticationManager
    }
    
    func signUp() {
        guard !email.isEmpty, !password.isEmpty else { return }

        Task {
            do {
                let returnedUserData = try await authenticationManager.createUser(email: email, password: password)
                print("Succeess")
            } catch {
                print("\(error)")
            }
        }
    }
    func singIn() {
        guard !email.isEmpty, !password.isEmpty else { return }
        
        Task {
            do {
                let _ = try await authenticationManager.signIn(email: email, password: password)
                print("User: \(email), \(password) sign in")
            } catch {
                print("\(error)")
            }
        }
    }
}
