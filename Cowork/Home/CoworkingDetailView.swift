//
//  CoworkingDetailView.swift
//  Cowork
//
//  Created by Yaroslav Orlov on 07.03.2025.
//

import SwiftUI

struct CoworkingDetailView: View {
    let data: [DetailRowMock] = mockDetailRows
    
    var body: some View {
        VStack {
            TabView {
                Image("onboarding1")
                    .resizable()
                    .scaledToFill()
                
                Image("onboarding2")
                    .resizable()
                    .scaledToFill()
            }
            .ignoresSafeArea(edges: .top)
            .frame(maxWidth: .infinity, maxHeight: UIScreen.main.bounds.height * 0.33)
            .tabViewStyle(.page(indexDisplayMode: .always))
            .indexViewStyle(.page(backgroundDisplayMode: .always))
            VStack(alignment: .leading, spacing: 10) {
                Rectangle()
                    .foregroundColor(.primaryPurple)
                    .frame(width: 100, height: 35)
                    .cornerRadius(8)
                    .overlay {
                        Text("150 $/Month")
                            .font(Montserrat.bold.size(size: 12))
                            .foregroundColor(.white)
                    }
                Text("IndieHive Coworking Space")
                    .font(Montserrat.semiBold.size(size: 22))
                    .foregroundColor(.primaryDark)
                Text("(Outdoor Working Space)")
                    .font(Montserrat.medium.size(size: 16))
                    .foregroundColor(.primaryDark)
                Text("Jl. A.R Hakim No.63, Kepatihan Kulon, Kec. Jebres, Kota Surakarta, Jawa Tengah 57129")
                    .font(Montserrat.light.size(size: 15))
                    .foregroundColor(.primaryGray)
                
                
                VStack(spacing: 20) {
                    Divider()
                    VStack(alignment: .leading, spacing: 8) {
                        HStack(spacing: 2) {
                            ForEach(0..<5, id: \.self) { _ in
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 12, height: 12)
                                    .foregroundColor(.yellow)
                            }
                            Spacer()
                            Button(action: {}) {
                                Text("View All")
                                    .font(Montserrat.regular.size(size: 12))
                                    .foregroundColor(.primaryPurple)
                            }
                        }
                        Text("235 Comments")
                            .font(Montserrat.light.size(size: 10))
                            .foregroundColor(.primaryGray)
                    }
                    Divider()
                }
                
                ForEach(data) { datum in
                    DetailRowView(data: datum)
                }
                
            }
            .padding(.horizontal, 20)
            Spacer()
        }
    }
}

#if DEBUG
struct CoworkingDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CoworkingDetailView()
    }
}
#endif
