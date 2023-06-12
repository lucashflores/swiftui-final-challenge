//
//  Game.swift
//  swiftui-final-challenge
//
//  Created by Lucas Flores on 07/06/23.
//

import Foundation
struct Game: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let info: String
    let description: String
    let imageName: String
    let fullImageName: String
    
    static func populateGames() -> [Game] {
        var games: [Game] = []
        games.append(Game(name: "Roots of Pacha", info: "RPG, Aventura", description: "Você vagou pelas selvas primitivas. Agora, é hora de você construir uma vila que permanecerá por gerações. Junte-se aos seus amigos para criar uma comunidade próspera, plante semeie e colha, faça amizade com animais, desbloqueie tecnologias, participe de festivais e encontre amor.", imageName: "rp", fullImageName: "rpfull"))
        games.append(Game(name: "Little Nightmares", info: "Aventura", description: "Mergulhe em Little Nightmares, um fantástico conto sombrio que o fará enfrentar seus medos de infância! Ajude Six a fugir de A Bocarra – um navio imenso e misterioso habitado por almas corrompidas que procuram sua próxima refeição.", imageName: "ln", fullImageName: "lnfull"))
        games.append(Game(name: "DayZ", info: "Ação, Zumbi", description: "Quanto você aguenta em um mundo pós-apocalíptico? Uma terra arrasada por \"zumbis\" infectados, onde você compete com outros sobreviventes por recursos limitados. Você vai ajudar estranhos em sua luta? Ou evitará traições como um lobo solitário? Esse é o DayZ. Essa é a sua história.", imageName: "dayz", fullImageName: "dayzfull"))
        games.append(Game(name: "Resident Evil 4", info: "Terror, Sobrevivência", description: "Sobrevivência é apenas o começo. Seis anos se passaram desde o desastre biológico em Raccoon City. Leon S. Kennedy, um dos sobreviventes, segue o rastro da raptada filha do presidente até uma vila europeia isolada, onde há algo terrivelmente errado com os habitantes.", imageName: "re4", fullImageName: "re4full"))
        games.append(Game(name: "Sea of Thieves", info: "Ação, Simulação", description: "Sea of Thieves oferece a experiência pirata essencial, desde velejar e lutar até explorar e saquear - tudo o que você precisa para viver a vida de pirata e se tornar uma lenda. Como não há papéis definidos, você tem liberdade total para interagir com o mundo e os outros jogadores como quiser.", imageName: "sot", fullImageName: "sotfull"))
        games.append(Game(name: "Stardew Valley", info: "RPG, Aventura", description: "Você herdou a antiga fazenda do seu avô, em Stardew Valley. Com ferramentas de segunda-mão e algumas moedas, você parte para dar início a sua nova vida. Será que você vai aprender a viver da terra, a transformar esse matagal em um próspero lar?", imageName: "sw", fullImageName: "swfull"))
        
        return games
    }
}
