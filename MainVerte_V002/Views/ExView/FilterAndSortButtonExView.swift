//
//  FilterSortButtonExView.swift
//  MainVerte
//
//  Created by Apprenant 141 on 29/07/2024.
//

import SwiftUI

struct FilterAndSortButtonExView: View {

    @State var modalIsVisible : Bool = false
    
    var body: some View {
        Button ( action : {
            modalIsVisible = true
        }, label : {
            Image(systemName: "slider.horizontal.3")
                .foregroundStyle(.mvMediumGray)
                .font(.system(size: 28))
        })
        .sheet(isPresented: $modalIsVisible) {
        } content: { FiltersAndSortViewModal()
        }
    }
}

#Preview {
    FilterAndSortButtonExView()
}
