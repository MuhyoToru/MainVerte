//
//  IdeaQuestionDetailsView.swift
//  MainVerte
//
//  Created by Pierre on 16/07/2024.
//

import SwiftUI

struct IdeaQuestionDetailsView: View {
    let isHorizontal: Bool = true
    
    var body: some View {
        VStack{
            ZStack {
                Text("Potager")
                    .font(.system(size: 30))
                HStack {
                    Spacer()
                    FavoriteButtonExView()
                }
            }
            .padding(.horizontal, 5)
            Image("MVTipQuestionPest")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 176)
                .cornerRadius(20)
                .clipped()
            Text("Quels sont les meilleurs moyens naturels pour protéger un potager extérieur contre les nuisibles sans utiliser de pesticides chimiques ?")
            HStack {
                Text("Commentaires")
                    .font(.title2)
                    .fontWeight(.bold)
                Spacer()
                ActionButtonExView(isHorizontal: isHorizontal)
            }
            
        }
        .padding()
    }
}

#Preview {
    IdeaQuestionDetailsView()
}
