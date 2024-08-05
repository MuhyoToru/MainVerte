//
//  FiltersAndSortViewModal.swift
//  MainVerte
//
//  Created by Pierre on 16/07/2024.
//

import SwiftUI

struct FiltersAndSortViewModal: View {
    
    var heightModal : CGFloat
    
    var body: some View {
        ZStack {
            Color.red
            Text("Work in Progress")
        }
        .presentationDetents([.fraction(heightModal)])
    }
}

#Preview {
    FiltersAndSortViewModal(heightModal: 0.8)
}
