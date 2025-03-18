//
//  NearestPlaceView.swift
//  Cowork
//
//  Created by Yaroslav Orlov on 18.03.2025.
//

import SwiftUI

struct NearestPlaceView: View {
    @State private var searchText: String = ""
    let data: [CoworkingSpaceMock] = mockCoworkingSpaces
    
    var body: some View {
        VStack(spacing: 20) {
            serchbarAndFilterContainer
            VStack {
                ScrollView {
                    ForEach(data) { data in
                        CoworkingSpaceCell(data: data)
                    }
                }
            }
        }
        .background(Color.lightBackground)
    }
}

extension NearestPlaceView {
    private var serchbarAndFilterContainer: some View {
        VStack(alignment: .leading, spacing: 15) {
            Text("Space Nearest")
                .font(Montserrat.bold.size(size: 24))
                .foregroundColor(.primaryDark)
            HStack {
                TextField("Comfortable Coworking Space?", text: $searchText)
                    .padding(.leading, 40)
                    .frame(height: 45)
                    .background(Color.textfieldBackground)
                    .cornerRadius(8)
                    .overlay(alignment: .leading) {
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 18, height: 18)
                            .padding(.leading, 12)
                    }
                
                Button(action: {}) {
                    Rectangle()
                        .foregroundColor(.textfieldBackground)
                        .frame(width: 45, height: 45)
                        .cornerRadius(8)
                        .overlay {
                            Image("filter")
                        }
                }
            }
        }
        .padding(.horizontal, 20)
    }
    
}

#if DEBUG
struct NearestPlaceView_Previews: PreviewProvider {
    static var previews: some View {
        NearestPlaceView()
    }
}
#endif
