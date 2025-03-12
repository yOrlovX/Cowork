//
//  AuthenticationView.swift
//  Cowork
//
//  Created by Yaroslav Orlov on 11.03.2025.
//

import SwiftUI

struct AuthenticationView: View {
    @StateObject private var viewModel = AuthenticationViewModel(authenticationManager: AuthenticationManager())
    
    var body: some View {
        ZStack {
            switch viewModel.authenticationState {
            case .login:
                LoginView(viewModel: viewModel)
            case .register:
                RegisterView(viewModel: viewModel)
            case .authenticated:
                MainView()
            }
        }
        .alert(isPresented: .constant(viewModel.errorMessage != nil)) {
            Alert(title: Text("Error"), message: Text(viewModel.errorMessage ?? ""), dismissButton: .default(Text("OK")) {
                viewModel.errorMessage = nil
            })
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
