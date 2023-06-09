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
    
    static func populateGames() -> [Game] {
        var games: [Game] = []
        games.append(Game(name: "Roots of Pacha", info: "RPG, Aventura", description: "Você vagou pelas selvas primitivas. Agora, é hora de você construir uma vila que permanecerá por gerações. Junte-se aos seus amigos para criar uma comunidade próspera, plante semeie e colha, faça amizade com animais, desbloqueie tecnologias, participe de festivais e encontre amor.", imageName: "rp"))
        games.append(Game(name: "Roots of Pacha", info: "RPG, Aventura", description: "Você vagou pelas selvas primitivas. Agora, é hora de você construir uma vila que permanecerá por gerações. Junte-se aos seus amigos para criar uma comunidade próspera, plante semeie e colha, faça amizade com animais, desbloqueie tecnologias, participe de festivais e encontre amor.", imageName: "rp"))
        games.append(Game(name: "Roots of Pacha", info: "RPG, Aventura", description: "Você vagou pelas selvas primitivas. Agora, é hora de você construir uma vila que permanecerá por gerações. Junte-se aos seus amigos para criar uma comunidade próspera, plante semeie e colha, faça amizade com animais, desbloqueie tecnologias, participe de festivais e encontre amor.", imageName: "rp"))
        games.append(Game(name: "Roots of Pacha", info: "RPG, Aventura", description: "Você vagou pelas selvas primitivas. Agora, é hora de você construir uma vila que permanecerá por gerações. Junte-se aos seus amigos para criar uma comunidade próspera, plante semeie e colha, faça amizade com animais, desbloqueie tecnologias, participe de festivais e encontre amor.", imageName: "rp"))
        games.append(Game(name: "Test", info: "RPG, Aventura", description: "Você vagou pelas selvas primitivas. Agora, é hora de você construir uma vila que permanecerá por gerações. Junte-se aos seus amigos para criar uma comunidade próspera, plante semeie e colha, faça amizade com animais, desbloqueie tecnologias, participe de festivais e encontre amor.", imageName: "rp"))
        games.append(Game(name: "Roots of Pacha", info: "RPG, Aventura", description: "Você vagou pelas selvas primitivas. Agora, é hora de você construir uma vila que permanecerá por gerações. Junte-se aos seus amigos para criar uma comunidade próspera, plante semeie e colha, faça amizade com animais, desbloqueie tecnologias, participe de festivais e encontre amor.", imageName: "rp"))
        games.append(Game(name: "Roots of Pacha", info: "RPG, Aventura", description: "Você vagou pelas selvas primitivas. Agora, é hora de você construir uma vila que permanecerá por gerações. Junte-se aos seus amigos para criar uma comunidade próspera, plante semeie e colha, faça amizade com animais, desbloqueie tecnologias, participe de festivais e encontre amor.", imageName: "rp"))
        games.append(Game(name: "Test", info: "RPG, Aventura", description: "Você vagou pelas selvas primitivas. Agora, é hora de você construir uma vila que permanecerá por gerações. Junte-se aos seus amigos para criar uma comunidade próspera, plante semeie e colha, faça amizade com animais, desbloqueie tecnologias, participe de festivais e encontre amor.", imageName: "rp"))
        
        return games
    }
}
