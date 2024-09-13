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
                VStack {
                    TitleExView(title: "Authentification")
                    VStack {
                        Spacer()
                        AuthentificationSelectionExView(selection: $selectedView)
                            .padding()
                        if selectedView == 0 {
                            MyAccountLoginView()
                        } else {
                            MyAccountRegisterView()
                        }
                        Spacer()
                        Button(action: {
                        }) {
                            Text("Confirmer")
                                .foregroundStyle(.mvWhite)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.mvDarkGreen)
                                .cornerRadius(10)
                        }
                        .padding()
                        Spacer()
                    }
                    .background(
                        Color.mvLightGreen.opacity(5)
                            .edgesIgnoringSafeArea(.all))
                    .clipShape(UnevenRoundedRectangle(topLeadingRadius: 20, topTrailingRadius: 20))
                }
            }
            .background(
                BackgroundExView(opacity: 0.8)
            )
        }
    }
}

#Preview {
    MyAccountView()
}
