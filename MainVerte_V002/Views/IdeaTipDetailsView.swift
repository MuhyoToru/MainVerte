//
//  IdeaTipDetailsView.swift
//  MainVerte
//
//  Created by Pierre on 16/07/2024.
//

import SwiftUI

struct IdeaTipDetailsView: View {
    @Environment(\.dismiss) private var dismiss
    let isHorizontal: Bool = true
    var ideaTip: IdeaTip
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    dismiss()
                }) {
                    HStack {
                        Image(systemName: "chevron.left")
                        Text("Idées")
                    }
                    .foregroundColor(Color.mvMediumGray)
                }
                .navigationBarBackButtonHidden(true)
                Spacer()
           }
            ZStack {
                TitleExView(title: ideaTip.title)
                HStack {
                    Spacer()
                    FavoriteButtonExView(isFavorite: ideaTip.isFavorite)
                        .offset(y: 5)
                }
            }
            .padding(.horizontal, 5)
            ScrollView {
                ImageDescriptionExView(
                    image: UIImage(named: ideaTip.images) ?? UIImage(), text: ideaTip.description
            )
            HStack {
                TitleExView(title: "Commentaires", textSize: 30, textColor: .mvDarkGreen)
                Spacer()
                ActionButtonExView(isHorizontal: isHorizontal)
                    .offset(y: 5)
            }
          
                    MessageBubbleExView(text: "Très bon conseil!", photo: "MVProfil02", isCurrentUser: false)
                    MessageBubbleExView(text: "Top!", photo: "MVProfil03", isCurrentUser: false)
                
            }
        }
        .padding(.horizontal)
        .background(BackgroundExView(opacity: 0.9))
    }
}

#Preview {
    IdeaTipDetailsView(ideaTip: IdeaTip(title: "Test", subtitle: "Test", images: "Test", description: "Test", subCategory: "Test"))
}


