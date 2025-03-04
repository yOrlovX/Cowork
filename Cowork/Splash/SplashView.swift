//
//  SplashView.swift
//  Cowork
//
//  Created by Yaroslav Orlov on 04.03.2025.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack {
            VStack(spacing: 10) {
                HStack(spacing: 10) {
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 35, height: 35)
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 35, height: 35)
                }
                Text("COWORK")
                    .font(Montserrat.bold.size(size: 30))
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
