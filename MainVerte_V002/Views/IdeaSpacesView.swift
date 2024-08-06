//
//  IdeaSpacesView.swift
//  MainVerte
//
//  Created by Pierre on 16/07/2024.
//

import SwiftUI

struct IdeaSpacesView: View {
    @Binding var showModal: Bool
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    NavigationLink(destination: IdeaListSpacesView()) {
                        ComposedImagesExView(
                            leftImage: "MVBathroom01",
                            topImage: "MVBathroom02",
                            bottomImage: "MVBathroom03",
                            rightImage: "MVBathroom04",
                            title: "Salle de bain",
                            subtitle: "15 Idées"
                        )
                    }
                    ComposedImagesExView(
                        leftImage: "MVGarden01",
                        topImage: "MVGarden02",
                        bottomImage: "MVGarden03",
                        rightImage: "MVGarden04",
                        title: "Jardin",
                        subtitle: "30 Idées"
                    )
                }
            }
            HStack {
                Spacer()
                Button(action: {
                    withAnimation {
                        showModal = true
                    }
                }) {
                    ActionButtonExView(action: "plus")
                }
            }
        }
        .padding(.horizontal)
        .padding(.bottom, 12)
        
    }
}

struct IdeaSpacesView_Previews: PreviewProvider {
    @State static var showModal = false
    
    static var previews: some View {
        IdeaSpacesView(showModal: $showModal)
    }
}

//#Preview {
//    IdeaSpacesView()
//}

