//
//  CoworkingSpaceCell.swift
//  Cowork
//
//  Created by Yaroslav Orlov on 06.03.2025.
//

import SwiftUI

struct CoworkingSpaceCell: View {
    let data : CoworkingSpaceMock
    
    var body: some View {
            HStack(spacing: 15) {
                Image(data.imageName)
                    .resizable()
                    .frame(width: 80, height: 121)
                    .cornerRadius(5)
                    .padding(.vertical, 6)
                    .padding(.leading, 6)
                VStack(alignment: .leading, spacing: 10) {
                    HStack(alignment: .top) {
                        HStack(spacing: 1) {
                            ForEach(0..<data.rating, id: \.self) { _ in
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
                    Text("\(data.comments) Comments")
                        .font(Montserrat.medium.size(size: 10))
                        .foregroundColor(.primaryGray)
                    Text(data.name)
                        .font(Montserrat.semiBold.size(size: 12))
                        .foregroundColor(.primaryDark)
                    Text(data.address)
                        .font(Montserrat.medium.size(size: 9))
                        .foregroundColor(.primaryGray)
                    Text("\(data.priceRange) $")
                        .font(Montserrat.bold.size(size: 12))
                        .foregroundColor(.primaryPurple)
                }
                .padding(.vertical, 14)
                .padding(.trailing, 9)
            }
            .background(.white)
            .cornerRadius(5)
            .frame(maxWidth: UIScreen.main.bounds.width - 40)
    }
}

struct CoworkingSpaceMock: Identifiable {
    let id = UUID()
    let imageName: String
    let rating: Int
    let comments: Int
    let name: String
    let address: String
    let priceRange: String
}

let mockCoworkingSpaces: [CoworkingSpaceMock] = [
    CoworkingSpaceMock(imageName: "onboarding1", rating: 5, comments: 235, name: "Kognitif Coffee & Co-working Space", address: "Jl. Duwet III No.2, Karangasem, Kec. Laweyan", priceRange: "$50-150"),
    CoworkingSpaceMock(imageName: "onboarding2", rating: 4, comments: 180, name: "Hub Coworking", address: "123 Main Street, City Center", priceRange: "$30-100"),
    CoworkingSpaceMock(imageName: "onboarding3", rating: 5, comments: 310, name: "The Collective Space", address: "45 Innovation Road, Tech Park", priceRange: "$60-200"),
    CoworkingSpaceMock(imageName: "onboarding1", rating: 3, comments: 90, name: "Freelancer's Haven", address: "22 Freedom Lane, Creative District", priceRange: "$20-80"),
    CoworkingSpaceMock(imageName: "onboarding2", rating: 4, comments: 150, name: "CollabSpot", address: "88 Networking Avenue, Business Hub", priceRange: "$40-120")
]


struct CoworkingSpaceCell_Previews: PreviewProvider {
    static var previews: some View {
        CoworkingSpaceCell(data: CoworkingSpaceMock(imageName: "onboarding1", rating: 5, comments: 235, name: "Kognitif Coffee & Co-working Space", address: "Jl. Duwet III No.2, Karangasem, Kec. Laweyan", priceRange: "$50-150"))
            .previewLayout(.sizeThatFits)
    }
}
