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
    @State private var souvenirDeMoi = false
    
    var body: some View {
        
        VStack(spacing: 20) {
            HStack {
                Image(systemName: "person.fill")
                    .foregroundStyle(.mvDarkGreen)
                    .padding(.leading, 10)
                
                TextField("Nom", text: $nom)
                    .font(.system(size: 18, weight: .bold))
                    .padding(10)
                
            }
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(lineWidth: 1)
                    .foregroundStyle(Color.mvDarkGreen)
                
            )
            
            HStack {
                Image(systemName: "lock.fill")
                    .foregroundStyle(.mvDarkGreen)
                    .padding(.leading, 10)
                
                
                SecureField("Mot de passe", text: $motDePasse)
                    .font(.system(size: 18, weight: .bold))
                    .padding(10)
            }
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(lineWidth: 1)
                    .foregroundStyle(Color.mvDarkGreen)

            )
            HStack {
                Toggle("Se souvenir de moi", isOn: $souvenirDeMoi)
                    .toggleStyle(CircularToggleStyle())
            }
        }
        .foregroundStyle(.mvDarkGreen)
        .padding()
    }
}

#Preview {
    MyAccountLoginView()
}

import SwiftUI

struct CircularToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            ZStack {
                Circle()
                    .fill(configuration.isOn ? Color.blue : Color.mvLightGreen)
                    .strokeBorder(lineWidth: 2)
                    .frame(width: 20, height: 20)
                
                if configuration.isOn {
                    Image(systemName: "checkmark")
                        .foregroundColor(.white)
                        .font(.system(size: 10, weight: .bold))
                }
            }
            .onTapGesture {
                configuration.isOn.toggle()
                
            }
        }
        
        configuration.label
    }
}

