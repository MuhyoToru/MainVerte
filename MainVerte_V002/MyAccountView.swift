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
            VStack {
                TitleExView(title: "Créer un Espace")
                
                AuthentificationSelectionExView(selection: $selectedView)
                    .padding()
                
                if selectedView == 0 {
                    MyAccountLoginView()
                } else {
                    MyAccountRegisterView()
                }
            }
            .background(BackgroundExView(opacity: 0.8))
        }
    }
}

#Preview {
    MyAccountView()
}
