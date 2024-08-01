//
//  ActionButtonExView.swift
//  MainVerte
//
//  Created by Apprenant 166 on 31/07/2024.
//

import SwiftUI

struct ActionButtonExView: View {
    var action: String = "plus"
    var isHorizontal: Bool = false
    
    var body: some View {
        ZStack {
           RoundedRectangle(cornerRadius: 15)
                .frame(width: isHorizontal ? 48 : 32, height: isHorizontal ? 32 : 48)
               .foregroundColor(Color.mvMediumBlue)
           Image(systemName: action)
               .foregroundColor(Color.mvFilterYellow)
               .font(.system(size: 18, weight: .black))
        }
   }
}

#Preview {
    ActionButtonExView()
}
