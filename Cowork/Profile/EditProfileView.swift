//
//  EditProfileView.swift
//  Cowork
//
//  Created by Yaroslav Orlov on 24.03.2025.
//

import SwiftUI

struct EditProfileView: View {
    @State private var name: String = ""
    @State private var email: String = "anamwp66@gmail.com"
    @State private var day: String = "12"
    @State private var month: String = "12"
    @State private var year: String = "12"
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Text("Edit Profile")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                
                // Name Field
                VStack(alignment: .leading, spacing: 8) {
                    Text("Your Name")
                        .fontWeight(.semibold)
                    TextField("Your Real Name", text: $name)
                        .padding()
                        .background(Color(.white))
                        .cornerRadius(10)
                }
                
                // Email Field
                VStack(alignment: .leading, spacing: 8) {
                    Text("Email")
                        .fontWeight(.semibold)
                    TextField("Email", text: $email)
                        .padding()
                        .background(Color(.white))
                        .cornerRadius(10)
                        .disabled(true) // Non-editable field
                }
                
                // Date of Birth
                VStack(alignment: .leading, spacing: 8) {
                    Text("Date Of Birth")
                        .fontWeight(.semibold)
                    HStack {
                        TextField("12", text: $day)
                            .padding()
                            .background(Color(.white))
                            .cornerRadius(10)
                        TextField("12", text: $month)
                            .padding()
                            .background(Color(.white))
                            .cornerRadius(10)
                        TextField("12", text: $year)
                            .padding()
                            .background(Color(.white))
                            .cornerRadius(10)
                    }
                }
                
                // Upload Photo Profile
                VStack(alignment: .leading, spacing: 8) {
                    Text("Upload Photo Profile")
                        .fontWeight(.semibold)
                    Button(action: {
                        // Upload action
                    }) {
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
                        .fontWeight(.semibold)
                    Button(action: {
                        // Upload action
                    }) {
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
            .padding()
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
