//
//  IdeasView.swift
//  MainVerte
//
//  Created by Pierre on 16/07/2024.
//

import SwiftUI

struct IdeasView: View {
    @State private var segmentedSelection: Int
    let tabs = ["Espaces", "Astuces", "Questions"]
    
    init(segmentedSelection: Int = 0) {
        _segmentedSelection = State(initialValue: segmentedSelection)
    }
    
    @State var researchText: String = ""
    @State private var showModal = false
    
//    var body: some View {
//        NavigationStack {
//            ZStack {
//                VStack {
//                    SegmentedButtonsExView(selection: $segmentedSelection, tabs: tabs) {
//                        withAnimation {
//                            showModal = false
//                        }
//                    }
//                    .padding()
//                    ResearchAndFilterExView(researchText: $researchText)
//                        .padding(.horizontal, 16)
//                    LineSeparatorExView()
//                    switch segmentedSelection {
//                    case 0:
//                        IdeaSpacesView(showModal: $showModal)
//                    case 1:
//                        IdeaTipsView(showModal: $showModal)
//                    case 2:
//                        IdeaQuestionsView(showModal: $showModal)
//                    default:
//                        IdeaSpacesView(showModal: $showModal)
//                    }
//                }
//                .background(BackgroundExView(opacity: 0.9))
//                if showModal {
//                    GeometryReader { geometry in
//                        Color.clear
//                            .edgesIgnoringSafeArea(.all)
//                            .onTapGesture {
//                                withAnimation {
//                                    showModal = false
//                                }
//                            }
//                        CreateIdeaView(showModal: $showModal)
//                            .transition(.move(edge: .bottom))
//                            .animation(.spring(), value: showModal)
//                            .offset(y: geometry.safeAreaInsets.bottom - 14)
//                    }
//                    .zIndex(1)
//                }
//            }
//        }
//        .navigationBarBackButtonHidden(true)
//    }
//}

    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    SegmentedButtonsExView(selection: $segmentedSelection, tabs: tabs) {
                        withAnimation {
                            showModal = false
                        }
                    }
                    .padding()
                    ResearchAndFilterExView(researchText: $researchText)
                        .padding(.horizontal, 16)
                    LineSeparatorExView()
                    switch segmentedSelection {
                    case 0:
                        IdeaSpacesView(showModal: $showModal)
                    case 1:
                        IdeaTipsView(showModal: $showModal)
                    case 2:
                        IdeaQuestionsView(showModal: $showModal)
                    default:
                        IdeaSpacesView(showModal: $showModal)
                    }
                }
                .background(BackgroundExView(opacity: 0.9))
                if showModal {
                    GeometryReader { geometry in
                        Color.clear
                            .edgesIgnoringSafeArea(.all)
                            .onTapGesture {
                                withAnimation {
                                    showModal = false
                                }
                            }
                        CreateIdeaView(showModal: $showModal)
                            .transition(.move(edge: .bottom))
                            .animation(.spring(), value: showModal)
                            .offset(y: geometry.safeAreaInsets.bottom - 14)
                    }
                    .zIndex(1)
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    IdeasView()
}
