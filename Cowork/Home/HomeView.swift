//
//  HomeView.swift
//  Cowork
//
//  Created by Yaroslav Orlov on 06.03.2025.
//

import SwiftUI

struct HomeView: View {
    @State private var searchText: String = ""
    let data: [CoworkingSpaceMock] = mockCoworkingSpaces
    
    var body: some View {
        VStack(spacing: 20) {
            userContainer
            serchbarAndFilterContainer
            buttonsContainer
            VStack {
                ScrollView {
                    ForEach(data) { data in
                        CoworkingSpaceCell(data: data)
                    }
                }
            }
        }
        .toolbar(.hidden)
        .background(Color.lightBackground)
    }
}

extension HomeView {
    private var userContainer: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10) {
                Image("homeUserImage")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 45, height: 45)
                Text("Hello, Anam!")
                    .font(Montserrat.medium.size(size: 15))
                    .foregroundColor(.primaryPurple)
                Text("More Productive with Comfortable Place ")
                    .font(Montserrat.bold.size(size: 20))
                    .foregroundColor(.primaryDark)
            }
            Spacer()
        }
        .padding(.leading, 20)
    }
    
    private var serchbarAndFilterContainer: some View {
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
        .padding(.horizontal, 20)
    }
    
    private var buttonsContainer: some View {
        HStack {
            Button(action: {}) {
                Rectangle()
                    .foregroundColor(.white)
                    .frame(width: 95, height: 95)
                    .cornerRadius(16)
                    .overlay {
                        Image("map")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 45, height: 45)
                    }
            }
            Spacer()
            Button(action: {}) {
                Rectangle()
                    .foregroundColor(.white)
                    .frame(width: 95, height: 95)
                    .cornerRadius(16)
                    .overlay {
                        Image("card")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 45, height: 45)
                    }
            }
            Spacer()
            Button(action: {}) {
                Rectangle()
                    .foregroundColor(.white)
                    .frame(width: 95, height: 95)
                    .cornerRadius(16)
                    .overlay {
                        Image("calendar")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 45, height: 45)
                    }
            }
        }
        .padding(.horizontal, 20)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
