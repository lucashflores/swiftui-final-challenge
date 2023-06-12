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
    @State var favoriteGames: [Game] = []
    var favoriteFilteredGames: [Game] {
        guard !searchTerm.isEmpty else { return favoriteGames}
        return favoriteGames.filter { $0.name.localizedCaseInsensitiveContains(searchTerm)}
    }
    var filteredGames: [Game] {
        guard !searchTerm.isEmpty else { return games}
        return games.filter { $0.name.localizedCaseInsensitiveContains(searchTerm)}
    }
    
    
    var body: some View {
        let otherGames = filteredGames.filter { !favoriteFilteredGames.contains($0)}
        
        NavigationStack {
            ScrollView {
                if (!favoriteGames.isEmpty) {
                    
                    LazyVGrid(
                        columns: columns,
                        alignment: .leading,
                        spacing: 16,
                        pinnedViews: [.sectionHeaders]
                    ) {
                        Section(header: Text("Favoritos").font(.title).bold().padding(.horizontal)) {
                            ForEach(favoriteFilteredGames) { game in
                                NavigationLink {
                                    GameInfoScreen(game: game)
                                } label: {
                                    GameCard(game: game, favoriteGames: $favoriteGames)
                                }.padding()
                                    
                            }
                        }

                        Section(header: Text("Outros").font(.title).bold().padding(.horizontal)) {
                            ForEach(otherGames) { game in
                                NavigationLink {
                                    GameInfoScreen(game: game)
                                } label: {
                                    GameCard(game: game, favoriteGames: $favoriteGames)
                                        .transition(.move(edge: .trailing))
                                }
                                
                                .padding()
                            }
                        }
                        Spacer()
                    }
                    
                    .padding()
                    
                }
                else
                {
                    LazyVGrid(columns: columns) {
                        ForEach(filteredGames) { game in
                            NavigationLink {
                                GameInfoScreen(game: game)
                            } label: {
                                GameCard(game: game, favoriteGames: $favoriteGames)
                                    
                            }.padding()
                                
                        }
                    }.padding()
                        

                }
            }
            .animation(.easeOut(duration: 0.25), value: favoriteGames.isEmpty)
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
