//
//  CoworkingSpaceCell.swift
//  Cowork
//
//  Created by Yaroslav Orlov on 06.03.2025.
//

import SwiftUI

struct CoworkingSpaceCell: View {
    var body: some View {
            HStack(spacing: 15) {
                Image("onboarding1")
                    .resizable()
                    .frame(width: 80, height: 121)
                    .cornerRadius(5)
                    .padding(.vertical, 6)
                    .padding(.leading, 6)
                VStack(alignment: .leading, spacing: 10) {
                    HStack(alignment: .top) {
                        HStack(spacing: 1) {
                            ForEach(0..<5) { _ in
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 9, height: 9)
                                    .foregroundColor(.yellow)
                            }
                        }
                    Spacer()
                        Button(action: {}) {
                            Image(systemName: "heart.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 14, height: 13)
                                .foregroundColor(.red)
                        }
                    }
                    Text("235 Comments")
                        .font(Montserrat.medium.size(size: 10))
                        .foregroundColor(.primaryGray)
                    Text("Kognitif Coffee & Co-working Space")
                        .font(Montserrat.semiBold.size(size: 12))
                        .foregroundColor(.primaryDark)
                    Text("Jl. Duwet III No.2, Karangasem, Kec. Laweyan")
                        .font(Montserrat.medium.size(size: 9))
                        .foregroundColor(.primaryGray)
                    Text("50-150 $")
                        .font(Montserrat.bold.size(size: 12))
                        .foregroundColor(.primaryPurple)
                }
                .padding(.vertical, 14)
                .padding(.trailing, 9)
            }
            .background(.white)
            .cornerRadius(16)
            .frame(maxWidth: UIScreen.main.bounds.width - 40)
    }
}

struct CoworkingSpaceCell_Previews: PreviewProvider {
    static var previews: some View {
        CoworkingSpaceCell()
            .previewLayout(.sizeThatFits)
    }
}
