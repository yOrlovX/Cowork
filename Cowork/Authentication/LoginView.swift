//
//  LoginView.swift
//  Cowork
//
//  Created by Yaroslav Orlov on 05.03.2025.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel =  AuthenticationViewModel(authenticationManager: AuthenticationManager())
    
    @State private var isPasswordVisible: Bool = false
    
    var body: some View {
        VStack {
            Image("loginViewImage")
                .resizable()
                .scaledToFit()
            
            textFielsdContainer
            socialMediaButtonsContainer
            primaryButtonContainer
            Spacer()
        }
        .ignoresSafeArea(edges: .top)
        .toolbar(.hidden)
    }
}

extension LoginView {
    private var textFielsdContainer: some View {
        VStack(alignment: .leading,spacing: 8) {
            Text("Welcome, Please Login First")
                .font(Montserrat.bold.size(size: 24))
                .foregroundColor(.primaryDark)
                .padding(.horizontal, 20)
            VStack(alignment: .leading, spacing: 11) {
                Text("Email")
                    .modifier(TextFieldLabelModifier())
                TextField("Youremail@mail.com", text: $viewModel.email)
                    .modifier(PrimaryTextFieldModifier())
            }
            .padding(.horizontal, 20)
            
            VStack(alignment: .leading, spacing: 11) {
                Text("Password")
                    .modifier(TextFieldLabelModifier())
                HStack {
                    if isPasswordVisible {
                        TextField("Password", text: $viewModel.password)
                            .modifier(PrimaryTextFieldModifier())
                    } else {
                        SecureField("Password", text: $viewModel.password)
                            .modifier(PrimaryTextFieldModifier())
                    }
                    
                }
                .overlay(alignment: .trailing) {
                    Image(systemName: isPasswordVisible ? "eye.slash" : "eye")
                        .foregroundColor(.gray)
                        .padding(.trailing, 8)
                        .onTapGesture {
                            isPasswordVisible.toggle()
                        }
                }
            }
            .padding(.horizontal, 20)
        }
        .padding(.top, 38)
    }
    
    private var socialMediaButtonsContainer: some View {
        HStack {
            HStack(spacing: 15) {
                Image("google")
                Image("facebook")
                Image("twitter")
            }
            Spacer()
            Button(action: {}) {
                Text("Forgot Password?")
                    .font(Montserrat.light.size(size: 10))
                    .foregroundColor(.primaryGray)
            }
        }
        .padding(.horizontal, 20)
        .padding(.top, 18)
    }
    
    private var primaryButtonContainer: some View {
        VStack(spacing: 39) {
            Button(action: { viewModel.login() }) {
                Text("Login")
                    .modifier(PrimaryButtonModifier())
            }
            Button(action: { viewModel.authenticationState = .register }) {
                HStack {
                    Text("Don’t Have An Account yet?")
                        .font(Montserrat.medium.size(size: 12))
                        .foregroundColor(.primaryGray)
                    Text("Register")
                        .font(Montserrat.bold.size(size: 12))
                        .foregroundColor(.primaryDark)
                }
            }
        }
        .padding(.top, 50)
    }
}

#if DEBUG
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
#endif
