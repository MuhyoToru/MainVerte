//
//  MySpacesView.swift
//  MainVerte
//
//  Created by Pierre on 16/07/2024.
//

import SwiftUI

struct MySpacesView: View {
    
    var mySpacesViewModel =  MySpaceViewModel().mySpaces
    @State var researchText : String = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    TitleExView(title: "Mes Espaces")
                    ResearchAndFilterExView(researchText: $researchText)
                        .padding(.horizontal, 16)
                    LineSeparatorExView()
                    ScrollView {
                        ForEach(mySpacesViewModel) { mySpace in
                            MySpaceButtonExView(mySpace: mySpace)
                        }
                    }
                    .padding()
                }
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        ActionButtonExView()
                    }
                }
                .padding()
            }
            .background(BackgroundExView(opacity: 0.8))
        }
    }
}


#Preview {
    MySpacesView()
}
