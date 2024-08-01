//
//  ResearchAndFilterExView.swift
//  MainVerte
//
//  Created by Apprenant 141 on 29/07/2024.
//

import SwiftUI

struct ResearchAndFilterExView: View {
    
    @Binding var researchText : String
    
    var body: some View {
        VStack(spacing : 16) {
            HStack {
                ResearchBarExView(researchText: $researchText)
                FilterAndSortButtonExView()
            }
        }
    }
}

#Preview {
    ResearchAndFilterExView(researchText: .constant("Test"))
}
