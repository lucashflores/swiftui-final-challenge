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
        let starIconColor = favoriteGames.contains(game) ? Color(uiColor: .systemYellow) : Color(uiColor: .systemGray)
        VStack(spacing: 0) {
            Image(self.game.imageName)
                .resizable()
                .frame(width: 160, height: 105)
                
            
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
                        .foregroundColor(starIconColor)
                }



            }
            .frame(maxHeight: 50)
            .padding(.horizontal, 10)
            .padding(.vertical, 15)
            .background(.white)
            //            .padding(.horizontal)
            //            .cornerRadius(10)
            
        }
        .clipShape(RoundedRectangle(cornerRadius: 10.0))
        
        .shadow(radius: 2.5)
        
        .frame(width: 160, height: 155)
        
        
            
    }
}

struct GameCard_Previews: PreviewProvider {
    static var previews: some View {
        GameCard(game: Game(name: "Resident Evil 4", info: "Terror, Sobrevivência", description: "Sobrevivência é apenas o começo. Seis anos se passaram desde o desastre biológico em Raccoon City. Leon S. Kennedy, um dos sobreviventes, segue o rastro da raptada filha do presidente até uma vila europeia isolada, onde há algo terrivelmente errado com os habitantes.", imageName: "sot", fullImageName: "sotfull"), favoriteGames: .constant([]))
    }
}
