//
//  MyAccountView.swift
//  MainVerte_V002
//
//  Created by Apprenant89 on 01/08/2024.
//

import SwiftUI

struct MyAccountView: View {
    
    @State private var selectedView = 0
    
    var body: some View {
        NavigationView {
            ZStack {
                BackgroundExView(opacity: 0.8)
                
                VStack {
                    
                    TitleExView(title: "Authentification")
                    
                    AuthentificationSelectionExView(selection: $selectedView)
                        .padding()
                    
                    if selectedView == 0 {
                        MyAccountLoginView()
                    } else {
                        MyAccountRegisterView()
                    }
                    Button(action: {
                        
                    }) {
                        Text("Confirmer")
                            .foregroundStyle(.mvWhite)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.mvDarkGreen)
                            .cornerRadius(10)
                    }
                    
                }
                .background(
                    Color.mvLightGreen.opacity(5)
                        .edgesIgnoringSafeArea(.all))
                .cornerRadius(50)
            }
        }
    }
}

#Preview {
    MyAccountView()
}
