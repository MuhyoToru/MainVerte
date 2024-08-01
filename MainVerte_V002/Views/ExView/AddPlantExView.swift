//
//  AddPlantExView.swift
//  MainVerte
//
//  Created by Apprenant89 on 31/07/2024.
//

import SwiftUI

struct AddPlantExView: View {
    
    @State private var plantCounter = 0
    
    var body: some View {
        
            HStack(spacing: 0) {
                ZStack {
                   UnevenRoundedRectangle(topLeadingRadius: 20, bottomLeadingRadius: 20, bottomTrailingRadius: 0, topTrailingRadius: 0)
                        .foregroundStyle(Color.mvWhite)
                        .frame(width: 297.5, height: 80)
                        .foregroundStyle(Color.mvWhite)
    
                    VStack {
                        HStack {
                            Image("MVSnowFairyRoseBush")
                            VStack {
                                Text("Rosier Fées des...")
                                    .foregroundColor(.black)
                                    .font(.headline)
                                
                                Text("Un rosier paysager...")
                                    .foregroundColor(.gray)
                                    .font(.subheadline)
                                    .padding(.leading, 1)
                            }
                        }
                    }
                }
                
                VStack {
                    ZStack {
                        UnevenRoundedRectangle(bottomTrailingRadius: 20, topTrailingRadius: 20)
                            .fill(Color.mvLightBlue)
                            .frame(width: 40 , height: 80)
                        
                        
                        VStack(spacing: -4) {
                            Button(action: {
                                plantCounter += 1
                            }) {
                                Text("+")
                                    .foregroundStyle(.mvWhite)
                                    .font(.title)
                            }
                            Text("\(plantCounter)")
                                .foregroundStyle(.mvWhite)
                                .font(.title)
                            
                            Button(action: {
                                if plantCounter > 0 {
                                    plantCounter -= 1
                                }
                            }) {
                                Text("-")
                                    .foregroundStyle(.mvWhite)
                                    .font(.title)
                            }
                        }
                    }
                }
                
            }
            .shadow(radius: 1)
    }
}

#Preview {
    AddPlantExView()
}
