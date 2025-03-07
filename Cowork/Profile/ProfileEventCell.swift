//
//  ProfileEventCell.swift
//  Cowork
//
//  Created by Yaroslav Orlov on 07.03.2025.
//

import SwiftUI

struct ProfileEventCell: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 10) {
                Rectangle()
                    .frame(width: 71, height: 28)
                    .foregroundColor(.primaryPurple)
                    .cornerRadius(4)
                    .overlay {
                        Text("3 Days Left")
                            .font(Montserrat.medium.size(size: 9))
                            .foregroundColor(.white)
                    }
                Text("Workshop UI/UX Designer")
                    .font(Montserrat.bold.size(size: 12))
                    .foregroundColor(.primaryDark)
                Text("Lorin Hotel")
                    .font(Montserrat.medium.size(size: 10))
                    .foregroundColor(.primaryGray)
                
                HStack {
                    HStack(spacing: 7) {
                        Image(systemName: "calendar")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 10, height: 10)
                            .foregroundColor(.primaryGray)
                        Text("Thursday, 22 Augus 2020")
                            .font(Montserrat.light.size(size: 8))
                            .foregroundColor(.primaryGray)
                    }
                    HStack(spacing: 7) {
                        Image(systemName: "clock")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 10, height: 10)
                            .foregroundColor(.primaryGray)
                        Text("15.00-18.00")
                            .font(Montserrat.light.size(size: 8))
                            .foregroundColor(.primaryGray)
                    }
                    HStack(spacing: 7) {
                        Image(systemName: "person")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 10, height: 10)
                            .foregroundColor(.primaryGray)
                        Text("4 Person")
                            .font(Montserrat.light.size(size: 8))
                            .foregroundColor(.primaryGray)
                    }
                }
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 12)
        }
    }
}

#if DEBUG
struct ProfileEventCell_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEventCell()
            .previewLayout(.sizeThatFits)
    }
}
#endif
