//
//  ComposedImagesExView.swift
//  MainVerte
//
//  Created by Apprenant 166 on 31/07/2024.
//

import SwiftUI

struct ComposedImagesExView: View {
    var leftImage: String = "MVBathroom01"
    var topImage: String = "MVBathroom02"
    var bottomImage: String = "MVBathroom03"
    var rightImage: String = "MVBathroom04"
    var title: String = "Salle de bain"
    var subtitle: String = "15 IdÃ©es"
    
    var body: some View {
        VStack (alignment: .leading) {
            HStack(spacing: 5) {
                Image(leftImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 176)
                    .clipped()
                    .clipShape(CustomCornerShape(corners: [.topLeft, .bottomLeft], radius: 20))
                VStack (spacing: 5){
                    Image(topImage)
                        .resizable()
                        .clipped()
                    Image(bottomImage)
                        .resizable()
                        .clipped()
                }
                Image(rightImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 88)
                    .clipped()
                    .clipShape(CustomCornerShape(corners: [.topRight, .bottomRight], radius: 20))
            }
            .frame(height: 176)
            Text(title)
                .font(.system(size: 20, weight: .bold))
                .foregroundColor(.mvDarkGreen)
            Text(subtitle)
                .font(.system(size: 12, weight: .medium))
                .foregroundColor(.mvDarkGreen)
        }
        .padding(.horizontal)
        .padding(.vertical, 12)
    }
}

struct CustomCornerShape: Shape {
    var corners: UIRectCorner
    var radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect,
                                byRoundingCorners: corners,
                                cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

#Preview {
    ComposedImagesExView()
}
