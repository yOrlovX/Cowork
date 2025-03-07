//
//  ProfileView.swift
//  Cowork
//
//  Created by Yaroslav Orlov on 07.03.2025.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            Image("userProfileBackground")
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity)
                .frame(maxHeight: UIScreen.main.bounds.height * 0.33)
            
            Image("userProfileImage")
                .resizable()
                .scaledToFill()
                .frame(width: 95, height: 95)
                .offset(y: -40)
            
            Text("Monty Python")
                .font(Montserrat.bold.size(size: 20))
                .foregroundColor(.primaryDark)
            Text("anamwp66@gmail.com")
                .font(Montserrat.medium.size(size: 10))
                .foregroundColor(.primaryGray)
            
            HStack {
                Button(action: {}) {
                    Rectangle()
                        .frame(height: 28)
                        .frame(width: 70)
                        .foregroundColor(.textfieldBackground)
                        .cornerRadius(8)
                        .overlay {
                            Text("Edit")
                                .font(Montserrat.semiBold.size(size: 11))
                                .foregroundColor(.primaryDark)
                        }
                }
                
                Button(action: {}) {
                    Rectangle()
                        .frame(height: 28)
                        .frame(width: 70)
                        .foregroundColor(.textfieldBackground)
                        .cornerRadius(8)
                        .overlay {
                            Text("Add Event")
                                .font(Montserrat.semiBold.size(size: 11))
                                .foregroundColor(.primaryDark)
                        }
                }
            }
            
            Spacer()
        }
        .ignoresSafeArea(edges: .top)
    }
}

#if DEBUG
struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
#endif
