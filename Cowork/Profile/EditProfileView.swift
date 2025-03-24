//
//  EditProfileView.swift
//  Cowork
//
//  Created by Yaroslav Orlov on 24.03.2025.
//

import SwiftUI

struct EditProfileView: View {
    @State private var name: String = ""
    @State private var email: String = ""
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Text("Edit Profile")
                    .font(Montserrat.bold.size(size: 24))
                    .foregroundColor(.primaryDark)
                
                // Name Field
                VStack(alignment: .leading, spacing: 8) {
                    Text("Your Name")
                        .font(Montserrat.semiBold.size(size: 12))
                        .foregroundColor(.primaryDark)
                    TextField("Your Real Name", text: $name)
                        .padding()
                        .background(Color(.white))
                        .cornerRadius(10)
                }
                
                // Email Field
                VStack(alignment: .leading, spacing: 8) {
                    Text("Email")
                        .font(Montserrat.semiBold.size(size: 12))
                        .foregroundColor(.primaryDark)
                    TextField("anamwp66@gmail.com", text: $email)
                        .padding()
                        .background(Color(.white))
                        .cornerRadius(10)
                        .disabled(true) // Non-editable field
                }
                // Upload Photo Profile
                VStack(alignment: .leading, spacing: 8) {
                    Text("Upload Photo Profile")
                        .font(Montserrat.semiBold.size(size: 12))
                        .foregroundColor(.primaryDark)
                    Button(action: { }) {
                        VStack {
                            Image(systemName: "camera.fill")
                                .font(.largeTitle)
                                .foregroundColor(.gray)
                            Text("Add Photos")
                                .foregroundColor(.gray)
                        }
                        .frame(maxWidth: .infinity, minHeight: 150)
                        .background(Color(.white))
                        .cornerRadius(10)
                    }
                }
                
                // Upload Cover
                VStack(alignment: .leading, spacing: 8) {
                    Text("Upload Cover")
                        .font(Montserrat.semiBold.size(size: 12))
                        .foregroundColor(.primaryDark)
                    Button(action: { }) {
                        VStack {
                            Image(systemName: "camera.fill")
                                .font(.largeTitle)
                                .foregroundColor(.gray)
                            Text("Add Photos")
                                .foregroundColor(.gray)
                        }
                        .frame(maxWidth: .infinity, minHeight: 150)
                        .background(Color(.white))
                        .cornerRadius(10)
                    }
                }
                
                Spacer()
            }
            .padding(.horizontal, 20)
        }
        .background(Color.lightBackground)
    }
}

#if DEBUG
struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView()
    }
}
#endif
