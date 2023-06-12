//
//  TabView.swift
//  swiftui-final-challenge
//
//  Created by Lucas Flores on 07/06/23.
//

//            PlayersView()
//                .tag(1)
//                .tabItem {
//                    Label("Players", systemImage: "person.3.fill")
//                }

import SwiftUI

@available(iOS 16.0, *)
struct AppTabView: View {
    @State var tabSelected: Int = 0
    
    var body: some View {
        TabView(selection: $tabSelected) {
            GamesScreen()
                .tag(0)
                .tabItem {
                    Label("Produtos", systemImage: "sparkles")
                }
            AboutScreen()
                .tag(1)
                .tabItem {
                    Label("Sobre", systemImage: "iphone.gen2")
                }
        }.tabViewStyle(.automatic)
    }
}

@available(iOS 16.0, *)
struct AppTabView_Previews: PreviewProvider {
    static var previews: some View {
        AppTabView()
    }
}
