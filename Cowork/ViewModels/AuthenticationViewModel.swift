//
//  AuthenticationViewModel.swift
//  Cowork
//
//  Created by Yaroslav Orlov on 11.03.2025.
//

import SwiftUI

enum AuthenticationState {
    case login
    case register
    case authenticated
}

final class AuthenticationViewModel: ObservableObject {
    
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var name: String = ""
    @Published var confirmedPassword: String = ""
    @Published var authenticationState: AuthenticationState = .login
    @Published var errorMessage: String?
    
    let authenticationManager: AuthenticationManagerProtocol
    
    init(authenticationManager: AuthenticationManager) {
        self.authenticationManager = authenticationManager
    }
    
    func signUp() {
        guard !email.isEmpty, !password.isEmpty else {
            errorMessage = "Email and password cannot be empty"
            return
        }
        Task {
            do {
                let _ = try await authenticationManager.createUser(email: email, password: password)
                DispatchQueue.main.async {
                    self.authenticationState = .authenticated
                }
            } catch {
                DispatchQueue.main.async {
                    self.errorMessage = error.localizedDescription
                }
            }
        }
    }
    
    func signIn() {
        guard !email.isEmpty, !password.isEmpty else {
            errorMessage = "Email and password cannot be empty"
            return
        }
        Task {
            do {
                let _ = try await authenticationManager.signIn(email: email, password: password)
                DispatchQueue.main.async {
                    self.authenticationState = .authenticated
                }
            } catch {
                DispatchQueue.main.async {
                    self.errorMessage = error.localizedDescription
                }
            }
        }
    }
}
