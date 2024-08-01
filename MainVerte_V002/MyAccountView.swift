//
//  MyAccountView.swift
//  MainVerte_V002
//
//  Created by Apprenant89 on 01/08/2024.
//

import SwiftUI

struct MyAccountView: View {
    var body: some View {
        VStack {
            TitleExView(title: "Créer un Espace")

        
            ZStack {
                
                UnevenRoundedRectangle(topLeadingRadius: 40, bottomLeadingRadius: 0, bottomTrailingRadius: 0, topTrailingRadius: 40)
                    .foregroundStyle(.mvLightGreen)
                AuthentificationSelectionExView()
                
            }
        }
        .background(BackgroundExView(opacity: 0.8))
    }
  
}

#Preview {
    MyAccountView()
}
