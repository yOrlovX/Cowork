//
//  RegisterView.swift
//  Cowork
//
//  Created by Yaroslav Orlov on 05.03.2025.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject var viewModel = AuthenticationViewModel(authenticationManager: AuthenticationManager())
    
    @State private var isPasswordVisible: Bool = false
    
    var body: some View {
        VStack {
            Image("registerImageView")
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

extension RegisterView {
    private var textFielsdContainer: some View {
        VStack(alignment: .leading,spacing: 8) {
            Text("Welcome, Register to Acces")
                .font(Montserrat.bold.size(size: 24))
                .foregroundColor(.primaryDark)
                .padding(.horizontal, 20)
            VStack(alignment: .leading, spacing: 11) {
                Text("Your name")
                    .font(Montserrat.semiBold.size(size: 12))
                    .foregroundColor(.primaryDark)
                TextField("Your Awesome Name", text: $viewModel.name)
                    .padding()
                    .frame(height: 45)
                    .background(Color.textfieldBackground)
                    .cornerRadius(8)
            }
            .padding(.horizontal, 20)
            VStack(alignment: .leading, spacing: 11) {
                Text("Email")
                    .font(Montserrat.semiBold.size(size: 12))
                    .foregroundColor(.primaryDark)
                TextField("Youremail@mail.com", text: $viewModel.email)
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
                HStack {
                    if isPasswordVisible {
                        TextField("Password", text: $viewModel.password)
                            .padding()
                            .frame(height: 45)
                            .background(Color.textfieldBackground)
                            .cornerRadius(8)
                    } else {
                        SecureField("Password", text: $viewModel.password)
                            .padding()
                            .frame(height: 45)
                            .background(Color.textfieldBackground)
                            .cornerRadius(8)
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
            VStack(alignment: .leading, spacing: 11) {
                Text("Password Again")
                    .font(Montserrat.semiBold.size(size: 12))
                    .foregroundColor(.primaryDark)
                HStack {
                    if isPasswordVisible {
                        TextField("Password", text: $viewModel.password)
                            .padding()
                            .frame(height: 45)
                            .background(Color.textfieldBackground)
                            .cornerRadius(8)
                    } else {
                        SecureField("Password", text: $viewModel.password)
                            .padding()
                            .frame(height: 45)
                            .background(Color.textfieldBackground)
                            .cornerRadius(8)
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
        }
        .padding(.horizontal, 20)
        .padding(.top, 18)
    }
    
    private var primaryButtonContainer: some View {
        VStack(spacing: 39) {
            Button(action: {}) {
                Text("Register")
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(width: UIScreen.main.bounds.width - 40)
                    .background(Color.primaryPurple)
                    .cornerRadius(8)
            }
            Button(action: { viewModel.authenticationState = .login }) {
                HStack {
                    Text("Already have an account?")
                        .font(Montserrat.medium.size(size: 12))
                        .foregroundColor(.primaryGray)
                    Text("Sign In")
                        .font(Montserrat.bold.size(size: 12))
                        .foregroundColor(.primaryDark)
                }
            }
        }
        .padding(.top, 50)
    }
}

#if DEBUG
struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        let vm = AuthenticationViewModel(authenticationManager: AuthenticationManager())
        RegisterView(viewModel: vm)
    }
}
#endif
