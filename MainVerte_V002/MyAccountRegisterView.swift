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
            TextField("Nom", text: $nom)
                .padding(10)
                .background(RoundedRectangle(cornerRadius: 8)
                    .stroke(lineWidth: 1)
                    .foregroundStyle(Color.mvDarkGreen))
                

            Button(action: {
                
            }) {
                HStack {
                    Image(systemName: "camera")
                    Text("Photo")
                    
                }
                .frame(maxWidth: .infinity)
                .padding(5)
    
            }
            .buttonStyle(.bordered)
            
            
            SecureField("Mot de passe", text: $motDePasse)
                .padding(10)
                .background(RoundedRectangle(cornerRadius: 8)
                    .stroke(lineWidth: 1)
                    .foregroundStyle(Color.mvDarkGreen))
            
            SecureField("Confirmer mot de passe", text: $motDePasse)
                .padding(10)
                .background(RoundedRectangle(cornerRadius: 8)
                    .stroke(lineWidth: 1)
                    .foregroundStyle(Color.mvDarkGreen))
           
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
        MyAccountRegisterView()
    }



import SwiftUI

struct CircularToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.label
            
            Spacer()
            
            ZStack {
                Circle()
                    .fill(configuration.isOn ? Color.blue : Color.mvWhite)
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
    }
}
