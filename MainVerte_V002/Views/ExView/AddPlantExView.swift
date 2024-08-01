//
//  AddPlantExView.swift
//  MainVerte
//
//  Created by Apprenant89 on 31/07/2024.
//

import SwiftUI

struct AddPlantExView: View {
    
    
    
    var body: some View {
        
        Button(action: {
            // Action à mettre
        }) {
            HStack(spacing: 0) {
                ZStack {
                    Rectangle()
                        .frame(width: 297.5, height: 80)
                        .foregroundStyle(Color.mvWhite)
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
                
                VStack {
                    ZStack {
                        Rectangle()
                            .fill(Color.mvLightBlue)
                            .frame(width: 40 , height: 80)
                        
                        VStack(spacing: -4) {
                            Button(action: {
                                // Action à mettre
                            }) {
                                Text("+")
                                    .foregroundStyle(.mvWhite)
                                    .font(.title)
                            }
                            Text("0")
                                .foregroundStyle(.mvWhite)
                                .font(.title)
                            
                            Button(action: {
                                // Action à mettre
                            }) {
                                Text("-")
                                    .foregroundStyle(.mvWhite)
                                    .font(.title)
                            }
                        }
                    }
                }
                
            }
            
            .cornerRadius(20)
            .shadow(radius: 2)
        }
    }
}

#Preview {
    AddPlantExView()
}
