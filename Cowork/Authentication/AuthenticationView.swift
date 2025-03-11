//
//  AuthenticationView.swift
//  Cowork
//
//  Created by Yaroslav Orlov on 11.03.2025.
//

import SwiftUI

enum AuthenticationState {
    case login
    case register
}

struct AuthenticationView: View {
    @State private var authenticationState: AuthenticationState = .login
    
    var body: some View {
        ZStack {
            switch authenticationState {
            case .login:
                LoginView(authenticationState: $authenticationState)
            case .register:
                RegisterView(authenticationState: $authenticationState)
            }
        }
    }
}


#if DEBUG
struct AuthenticationView_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticationView()
    }
}
#endif
