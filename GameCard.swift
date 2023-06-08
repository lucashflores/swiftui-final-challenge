//
//  GameCard.swift
//  swiftui-final-challenge
//
//  Created by Lucas Flores on 07/06/23.
//

import SwiftUI

struct GameCard: View {
    var gameName: String
    var gameInfo: String
    var gameImageName: String
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Image(gameImageName)
                .resizable()
                
            HStack(spacing: 10) {
                VStack(alignment: .leading) {
                    Text(gameName).font(.footnote).bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text(gameInfo).font(.caption2).foregroundColor(Color(uiColor: .systemGray))
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                Image(systemName: "star")
                    
            }
            .padding(10)
            .frame(maxWidth: .infinity)
            .background(.white)
//            .padding(.horizontal)
//            .cornerRadius(10)
            
        }
        
        .clipShape(RoundedRectangle(cornerRadius: 10.0))
        .shadow(radius: 2.5)
        .frame(width: 150, height: 185)
            
    }   
}

struct GameCard_Previews: PreviewProvider {
    static var previews: some View {
        GameCard(gameName: "Test", gameInfo: "RPG, Aventura", gameImageName: "rp")
    }
}
