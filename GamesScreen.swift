//
//  GamesScreen.swift
//  swiftui-final-challenge
//
//  Created by Lucas Flores on 06/06/23.
//

import SwiftUI

@available(iOS 16.0, *)
struct GamesScreen: View {
    @State var searchTerm = ""
    var games = Game.populateGames()
    let columns = [GridItem(.adaptive(minimum: 150))]
    var filteredGames: [Game] {
        guard !searchTerm.isEmpty else { return games}
        return games.filter { $0.name.localizedCaseInsensitiveContains(searchTerm)}
    }
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(filteredGames) { game in
                        NavigationLink {
                            GameInfoScreen(game: game)
                        } label: {
                            GameCard(gameName: game.name, gameInfo: game.info, gameImageName: game.imageName)
                                
                        }.padding()

                    }
                }.padding()
            }
            .buttonStyle(PlainButtonStyle())
            .navigationTitle("Jogos")
            .searchable(text: $searchTerm, placement: .navigationBarDrawer(displayMode: .always), prompt: "Search Games")
        }
    }
}

@available(iOS 16.0, *)
struct GamesScreen_Previews: PreviewProvider {
    static var previews: some View {
        GamesScreen()
    }
}
