//
//  GameInfoScreen.swift
//  swiftui-final-challenge
//
//  Created by Lucas Flores on 07/06/23.
//

import SwiftUI

struct GameInfoScreen: View {
    var game: Game
    var body: some View {
        ZStack(alignment: .bottom) {
            ScrollView {
                Image(game.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxHeight: .infinity, alignment: .top)
                
                VStack(spacing: 15) {
                    VStack(alignment: .leading) {
                        Text(game.name)
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(Color("game_purple"))
                            .frame(maxWidth: .infinity, alignment: .leading)

                        Text(game.info)
                            .font(.body)
                            .foregroundColor(Color(uiColor: .systemGray))
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }

                    VStack(alignment: .leading) {
                        Text("Sobre")
                            .bold()
                            .font(.title3)
                            .frame(maxWidth: .infinity, alignment: .leading)

                        Text(game.description)
                            .foregroundColor(Color(uiColor: .systemGray))
                            .font(.body)
                            .frame(maxWidth: .infinity, alignment: .leading)

                    }

                }
                .padding(.bottom, 50)
                .padding(.horizontal, 30)
                .padding(.top, 30)
                .frame(maxWidth: .infinity)
                .background(.white)
                .cornerRadius(12)
            }
            
        }.ignoresSafeArea()
    }
}

struct GameInfoScreen_Previews: PreviewProvider {
    static var previews: some View {
        GameInfoScreen(game: Game(name: "Roots of Pacha", info: "RPG, Aventura", description: "Você vagou pelas selvas primitivas. Agora, é hora de você construir uma vila que permanecerá por gerações. Junte-se aos seus amigos para criar uma comunidade próspera, plante semeie e colha, faça amizade com animais, desbloqueie tecnologias, participe de festivais e encontre amor.", imageName: "rp"))
    }
}
