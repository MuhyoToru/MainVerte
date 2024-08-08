//
//  MyAccountRegisterView.swift
//  MainVerte_V002
//
//  Created by Apprenant89 on 01/08/2024.
//

import SwiftUI

struct MyAccountRegisterView: View {
    
    @State private var nom = ""
    @State private var motDePasse = ""
    @State private var confirmerMotDePasse = ""
    @State private var souvenirDeMoi = false
    
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Image(systemName: "person.fill")
                    .foregroundStyle(.mvDarkGreen)
                    .padding(.leading, 10)
                
                TextField("Nom", text: $nom)
                    .font(.system(size: 18, weight: .regular))
                    .padding(10)
                    .foregroundStyle(Color.mvDarkGreen)
                
            }
            .background(
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .foregroundStyle(Color.mvWhite)
                    
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(lineWidth: 1)
                        .foregroundStyle(Color.mvDarkGreen)
                }
            )
            
            Button(action: {
                
            }) {
                HStack {
                    Image(systemName: "camera")
                    Text("Photo")
                    
                }
                .frame(maxWidth: .infinity)
                .padding(15)
                .background(Color.mvDarkGreen)
                .foregroundColor(.white)
                .cornerRadius(8)
                
            }
            
            
            HStack {
                
                Image(systemName: "lock.fill")
                    .foregroundStyle(.mvDarkGreen)
                    .padding(.leading, 10)
                
                SecureField("Mot de passe", text: $motDePasse)
                    .font(.system(size: 18, weight: .regular))
                    .padding(10)
                
            }
            .background(
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .foregroundStyle(Color.mvWhite)
                    
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(lineWidth: 1)
                        .foregroundStyle(Color.mvDarkGreen)
                }
            )
            HStack {
                
                Image(systemName: "lock.fill")
                    .foregroundStyle(.mvDarkGreen)
                    .padding(.leading, 10)
                
                SecureField("Confirmer mot de passe", text: $motDePasse)
                    .font(.system(size: 18, weight: .regular))
                    .padding(10)
                
            }
            .background(
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .foregroundStyle(Color.mvWhite)
                    
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(lineWidth: 1)
                        .foregroundStyle(Color.mvDarkGreen)
                }
            )
            
//          HStack {
//                Toggle("Se souvenir de moi", isOn: $souvenirDeMoi)
//                    .toggleStyle(CircularToggleStyle())
//            }
        }
        
        .foregroundStyle(.mvDarkGreen)
        .padding()
    }
}
#Preview {
    MyAccountRegisterView()
}
