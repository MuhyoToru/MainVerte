//
//  FavoritesTipsView.swift
//  MainVerte
//
//  Created by Pierre on 16/07/2024.
//

import SwiftUI

struct FavoritesTipsView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5 ) {
            
            Image("MVGarden")
                .resizable()
                .scaledToFit()
                .frame(width: 350 , height: 200)
                .cornerRadius(10)
            
            HStack(spacing: 220) {
                Text("Jardin")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.mvDarkGreen)
                
                Image(systemName: "heart.fill")
                    .font(.system(size: 30))
                    .foregroundColor(.mvLightBlue)
            }
            .padding(.horizontal, 10)
            
            Text("Sofiane")
                .font(.title3)
                .foregroundColor(.mvDarkGreen)
                .padding(.leading, 10)
        }
        
        Spacer().frame(height: 30)
        
        VStack(alignment: .leading, spacing: 5 ) {
            
            Image("MVGarden")
                .resizable()
                .scaledToFit()
                .frame(width: 350 , height: 200)
                .cornerRadius(10)
            
            HStack(spacing: 220) {
                Text("Jardin")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.mvDarkGreen)
                
                Image(systemName: "heart.fill")
                    .font(.system(size: 30))
                    .foregroundColor(.mvLightBlue)
            }
            .padding(.horizontal, 10)
            
            Text("Sofiane")
                .font(.title3)
                .foregroundColor(.mvDarkGreen)
                .padding(.leading, 10)
        }
        Spacer()
    }
}

#Preview {
    FavoritesTipsView()
}
