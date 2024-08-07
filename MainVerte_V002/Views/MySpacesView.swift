//
//  MySpacesView.swift
//  MainVerte
//
//  Created by Pierre on 16/07/2024.
//

import SwiftUI

struct MySpacesView: View {
    
    @EnvironmentObject var mySpacesViewModel : MySpaceViewModel
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
                        VStack(spacing : 16) {
                            ForEach(mySpacesViewModel.mySpaces) { mySpace in
                                MySpaceButtonExView(mySpace: mySpace)
                            }
                        }
                    }
                    .padding()
                }
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        NavigationLink(destination: {
                            CreateSpaceView()
                        }, label: {
                            ActionButtonExView()
                        })
                    }
                }
                .padding()
            }
            .background(BackgroundExView(opacity: 0.8))
            .navigationBarBackButtonHidden(true)
        }
    }
}


#Preview {
    MySpacesView()
}
