//
//  EditProfileView.swift
//  Cowork
//
//  Created by Yaroslav Orlov on 24.03.2025.
//

import SwiftUI
import PhotosUI

struct EditProfileView: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var selectedProfileImage: UIImage? = nil
    @State private var selectedCoverImage: UIImage? = nil
    @State private var selectedProfileItem: PhotosPickerItem? = nil
    @State private var selectedCoverItem: PhotosPickerItem? = nil
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                textFieldsContainer
                
                VStack(alignment: .leading, spacing: 16) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Upload Photo Profile")
                            .font(Montserrat.semiBold.size(size: 12))
                            .foregroundColor(.primaryDark)
                        
                        PhotosPicker(selection: $selectedProfileItem, matching: .images) {
                            VStack {
                                if let selectedProfileImage {
                                    Image(uiImage: selectedProfileImage)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(maxWidth: .infinity, minHeight: 150)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                } else {
                                    Image(systemName: "camera.fill")
                                        .font(.largeTitle)
                                        .foregroundColor(.gray)
                                    Text("Add Photos")
                                        .foregroundColor(.gray)
                                }
                            }
                            .frame(maxWidth: .infinity, minHeight: 150)
                            .background(Color(.white))
                            .cornerRadius(10)
                        }
                        .onChange(of: selectedProfileItem) { newItem in
                            Task {
                                if let data = try? await newItem?.loadTransferable(type: Data.self) {
                                    selectedProfileImage = UIImage(data: data)
                                }
                            }
                        }
                    }
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Upload Cover")
                            .font(Montserrat.semiBold.size(size: 12))
                            .foregroundColor(.primaryDark)
                        
                        PhotosPicker(selection: $selectedCoverItem, matching: .images) {
                            VStack {
                                if let selectedCoverImage {
                                    Image(uiImage: selectedCoverImage)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(maxWidth: .infinity, minHeight: 150)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                } else {
                                    Image(systemName: "camera.fill")
                                        .font(.largeTitle)
                                        .foregroundColor(.gray)
                                    Text("Add Photos")
                                        .foregroundColor(.gray)
                                }
                            }
                            .frame(maxWidth: .infinity, minHeight: 150)
                            .background(Color(.white))
                            .cornerRadius(10)
                        }
                        .onChange(of: selectedCoverItem) { newItem in
                            Task {
                                if let data = try? await newItem?.loadTransferable(type: Data.self) {
                                    selectedCoverImage = UIImage(data: data)
                                }
                            }
                        }
                    }
                }
            }
            .padding(.horizontal, 20)
        }
        .background(Color.lightBackground)
    }
}


extension EditProfileView {
    private var textFieldsContainer: some View {
        VStack(alignment: .leading, spacing: 15) {
            Text("Edit Profile")
                .font(Montserrat.bold.size(size: 24))
                .foregroundColor(.primaryDark)
            VStack(alignment: .leading, spacing: 8) {
                Text("Your Name")
                    .font(Montserrat.semiBold.size(size: 12))
                    .foregroundColor(.primaryDark)
                TextField("Your Real Name", text: $name)
                    .padding()
                    .background(Color(.white))
                    .cornerRadius(10)
            }
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
        }
    }
}

#if DEBUG
struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView()
    }
}
#endif
