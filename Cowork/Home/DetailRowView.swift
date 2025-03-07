//
//  DetailRowView.swift
//  Cowork
//
//  Created by Yaroslav Orlov on 07.03.2025.
//

import SwiftUI

import SwiftUI

struct DetailRowView: View {
    let data: DetailRowMock

    var body: some View {
        HStack(alignment: .top, spacing: 12) {
            Image(systemName: data.iconName)
                .resizable()
                .scaledToFit()
                .frame(width: 18, height: 18)
                .foregroundColor(.gray)

            VStack(alignment: .leading, spacing: 4) {
                Text(data.title)
                    .font(Montserrat.regular.size(size: 12))
                    .foregroundColor(.primaryDark)

                if let subtitle = data.subtitle {
                    Text(subtitle)
                        .font(Montserrat.light.size(size: 10))
                        .foregroundColor(.primaryGray)
                }
            }

            Spacer()

            if data.showButton {
                Button(action: { data.action() }) {
                    Text("View All")
                        .font(Montserrat.regular.size(size: 12))
                        .foregroundColor(.primaryPurple)
                }
            }
        }
//        .padding(.vertical, 8)
    }
}

//struct DetailSectionView: View {
//    var body: some View {
//        VStack(alignment: .leading, spacing: 16) {
//            DetailRowView(data:
//        }
//        .padding()
//        .background(Color.white)
//        .cornerRadius(12)
//        .shadow(color: .gray.opacity(0.2), radius: 8, x: 0, y: 4)
//    }
//}

struct DetailRowMock: Identifiable {
    let id = UUID()
    let iconName: String
    let title: String
    let subtitle: String?
    let showButton: Bool
    let action: () -> ()
}

let mockDetailRows: [DetailRowMock] = [
    DetailRowMock(iconName: "clock", title: "Opening", subtitle: "15.00 - 18.00 Am", showButton: false, action: {}),
    DetailRowMock(iconName: "list.bullet", title: "Room List", subtitle: "7 Room", showButton: false, action: {}),
    DetailRowMock(iconName: "house", title: "Amenities & Facilities", subtitle: "High Speed Wifi\nAir Conditioner\nMonitor 40 inch", showButton: false, action: {}),
    DetailRowMock(iconName: "photo", title: "Photos", subtitle: nil, showButton: true, action: {})
]

//struct DetailSectionView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailSectionView()
//            .previewLayout(.sizeThatFits)
//    }
//}

