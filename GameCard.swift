//
//  GameCard.swift
//  swiftui-final-challenge
//
//  Created by Lucas Flores on 07/06/23.
//

import SwiftUI

struct GameCard: View {
    var game: Game
    @Binding var favoriteGames: [Game]
    
    var body: some View {
        let starIcon = favoriteGames.contains(game) ? "star.fill" : "star"
        ZStack(alignment: .bottom) {
            Image(self.game.imageName)
                .resizable()
            
            HStack(spacing: 10) {
                VStack(alignment: .leading) {
                    Text(self.game.name).font(.footnote).bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text(self.game.info).font(.caption2).foregroundColor(Color(uiColor: .systemGray))
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                Button {
                    if (favoriteGames.contains(game)) {
                        favoriteGames = favoriteGames.filter {
                            $0.id != self.game.id
                        }
                    } else {
                        favoriteGames.append(self.game)
                    }
                } label: {
                    Image(systemName: starIcon)
                        .foregroundColor(.black)
                }
                
                
                
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
        GameCard(game: Game(name: "Roots of Pacha", info: "RPG, Aventura", description: "Você vagou pelas selvas primitivas. Agora, é hora de você construir uma vila que permanecerá por gerações. Junte-se aos seus amigos para criar uma comunidade próspera, plante semeie e colha, faça amizade com animais, desbloqueie tecnologias, participe de festivais e encontre amor.", imageName: "rp"), favoriteGames: .constant([]))
    }
}
