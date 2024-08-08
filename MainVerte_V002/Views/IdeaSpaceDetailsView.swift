//
//  IdeaSpaceDetailsView.swift
//  MainVerte
//
//  Created by Apprenant 141 on 16/07/2024.
//

import SwiftUI

struct IdeaSpaceDetailsView: View {
    @Environment(\.dismiss) private var dismiss
    let isHorizontal: Bool = true
    var ideaSpace: IdeaSpace
    
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
            ZStack{
                TitleExView(title: ideaSpace.title)
                HStack {
                    Spacer()
                    FavoriteButtonExView(isFavorite: ideaSpace.isFavorite)
                        .offset(y: 5)
                }
            }
            .padding(.horizontal, 5)
            ScrollView {
                ImageDescriptionExView(
                    image: UIImage(named: ideaSpace.images) ?? UIImage(), text: ideaSpace.description
            )
            HStack {
                TitleExView(title: "Commentaires", textSize: 30, textColor: .mvDarkGreen)
                Spacer()
                ActionButtonExView(isHorizontal: isHorizontal)
                    .offset(y: 5)
            }
            
                MessageBubbleExView(text: "Trop beau!", photo: "MVProfil01", isCurrentUser: false)
                MessageBubbleExView(text: "J'aime beaucoup", photo: "MVProfil03", isCurrentUser: false)
                MessageBubbleExView(text: "Wow!", photo: "MVProfil03", isCurrentUser: false)

            }
        }
        .padding(.horizontal)
        .background(BackgroundExView(opacity: 0.9))
    }
}

//#Preview {
//    IdeaSpaceDetailsView()
//}


