//
//  FavoriteView.swift
//  Cowork
//
//  Created by Yaroslav Orlov on 06.03.2025.
//

import SwiftUI

struct FavoriteView: View {
    let data: [CoworkingSpaceMock] = mockCoworkingSpaces
    
    var body: some View {
        ZStack {
            Color.lightBackground
                .ignoresSafeArea(.all)
            VStack(alignment: .leading) {
                Text("Favorite")
                    .font(Montserrat.bold.size(size: 24))
                ScrollView {
                    ForEach(data) { data in
                        CoworkingSpaceCell(data: data)
                    }
                }
            }
        }
    }
}
#if DEBUG
struct FavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteView()
    }
}
#endif
