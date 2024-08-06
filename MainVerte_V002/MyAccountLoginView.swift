//
//  MyAccountLoginView.swift
//  MainVerte_V002
//
//  Created by Apprenant89 on 01/08/2024.
//

import SwiftUI

struct MyAccountLoginView: View {
    
    @State private var nom = ""
    @State private var motDePasse = ""
    
    var body: some View {
        
        VStack(spacing: 20) {
            HStack {
                Image(systemName: "person.fill")
                    .foregroundStyle(.mvBlack)
                    .padding(.leading, 10)
                
                TextField("Nom", text: $nom)
                    .padding(10)
            }
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(lineWidth: 1)
                    .foregroundStyle(Color.mvDarkGreen)
                
            )
            
            HStack {
                Image(systemName: "lock.fill")
                    .foregroundStyle(.mvBlack)
                    .padding(.leading, 10)
                
                SecureField("Mot de passe", text: $motDePasse)
                    .padding(10)
            }
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(lineWidth: 1)
                    .foregroundStyle(Color.mvDarkGreen)
                
            )
        }
            .foregroundStyle(.mvDarkGreen)
            .padding()
        }
    }

    #Preview {
        MyAccountLoginView()
    }
