//
//  LoginView.swift
//  Cowork
//
//  Created by Yaroslav Orlov on 05.03.2025.
//

import SwiftUI

struct LoginView: View {
   
    @Binding var authenticationState: AuthenticationState
    
    @StateObject private var authenticationViewModel = AuthenticationViewModel(authenticationManager: AuthenticationManager())
    
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
                    .font(Montserrat.semiBold.size(size: 12))
                    .foregroundColor(.primaryDark)
                TextField("Youremail@mail.com", text: $authenticationViewModel.email)
                    .padding()
                    .frame(height: 45)
                    .background(Color.textfieldBackground)
                    .cornerRadius(8)
            }
            .padding(.horizontal, 20)
            
            VStack(alignment: .leading, spacing: 11) {
                Text("Password")
                    .font(Montserrat.semiBold.size(size: 12))
                    .foregroundColor(.primaryDark)
                TextField("Password ****", text: $authenticationViewModel.password)
                    .padding()
                    .frame(height: 45)
                    .background(Color.textfieldBackground)
                    .cornerRadius(8)
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
            Button(action: { authenticationViewModel.singIn() }) {
                Text("Login")
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(width: UIScreen.main.bounds.width - 40)
                    .background(Color.primaryPurple)
                    .cornerRadius(8)
            }
            Button(action: { authenticationState = .register }) {
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
        LoginView(authenticationState: .constant(.login))
    }
}
#endif
