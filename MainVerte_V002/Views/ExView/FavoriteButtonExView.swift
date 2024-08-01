//
//  FavoriteButtonExView.swift
//  MainVerte
//
//  Created by Apprenant 166 on 01/08/2024.
//

import SwiftUI

struct FavoriteButtonExView: View {
    @State private var isFavorite: Bool = false
    var body: some View {
        Button(action: {
            isFavorite.toggle()
        }) {
            ZStack {
                if isFavorite {
                    Image(systemName: "heart.fill")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(Color.mvMediumBlue)
                }
                Image(systemName: "heart")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .foregroundColor(Color.mvDarkGreen)
                Image(systemName: "heart")
                    .resizable()
                    .frame(width: 26, height: 26)
                    .foregroundColor(Color.mvDarkGreen)
            }
        }
    }
}

//    @Binding var isFavorite: Bool
//
//        var body: some View {
//            Button(action: {
//                isFavorite.toggle()
//            }) {
//                ZStack {
//                    if isFavorite {
//                        Image(systemName: "heart.fill")
//                            .resizable()
//                            .frame(width: 24, height: 24)
//                            .foregroundColor(Color.mvMediumBlue)
//                    } else {
//                        Image(systemName: "heart")
//                            .resizable()
//                            .frame(width: 24, height: 24)
//                            .foregroundColor(Color.mvDarkGreen)
//                    }
//                }
//            }
//        }
//    }

#Preview {
    FavoriteButtonExView()
}
