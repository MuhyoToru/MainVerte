//
//  MessageBubbleExView.swift
//  MainVerte_V002
//
//  Created by Apprenant 166 on 01/08/2024.
//

import SwiftUI

struct MessageBubbleExView: View {
    var text: String
    var photo: String
    var isCurrentUser: Bool
    
    var body: some View {
            HStack(alignment: .top) {
                if !isCurrentUser {
                    Image(photo)
                        .resizable()
                        .frame(width: 45, height: 45)
                        .cornerRadius(5)
                        .padding(.trailing)
                    HStack(alignment: .top, spacing: 0) {
                        Triangle()
                            .fill(Color.white)
                            .frame(width: 16, height: 16)
                        Text(text)
                            .padding(.horizontal)
                            .padding(.vertical, 10)
                            .background(Color.white)
                            .clipShape(UnevenRoundedRectangle(
                                bottomLeadingRadius: 10,
                                bottomTrailingRadius: 10,
                                topTrailingRadius: 10
                            ))
                        Spacer()
                    }
                    .offset(x: -10, y: 20)
                } else {
                    HStack(alignment: .top, spacing: 0) {
                        Spacer()
                        Text(text)
                            .padding(.horizontal)
                            .padding(.vertical, 10)
                            .background(Color.white)
                            .clipShape(UnevenRoundedRectangle(
                                topLeadingRadius: 10, bottomLeadingRadius: 10,
                                bottomTrailingRadius: 10
                            ))
                        Triangle()
                            .fill(Color.white)
                            .frame(width: 16, height: 16)
                            .rotationEffect(.degrees(-90))
                    }
                    .offset(x: 10, y: 20)
                    Image(photo)
                        .resizable()
                        .frame(width: 45, height: 45)
                        .cornerRadius(5)
                        .padding(.leading)
                }
            }
            .padding(.bottom, 40)
        }
    }
struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.closeSubpath()
        return path
    }
}

struct MessageBubbleExView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.red
            VStack{
                MessageBubbleExView(text: "Quels sont les meilleurs moyens naturels pour protéger un potager extérieur contre les nuisibles sans utiliser de pesticides chimiques ?", photo: "MVProfil01", isCurrentUser: false)
                MessageBubbleExView(text: "Merci", photo: "MVProfil01", isCurrentUser: true)
                
            }
        }
    }
}
