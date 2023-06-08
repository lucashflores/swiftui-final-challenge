//
//  MainScreen.swift
//  swiftui-final-challenge
//
//  Created by Lucas Flores on 07/06/23.
//

import SwiftUI

@available(iOS 16.0, *)
struct MainScreen: View {
    @State var currentScreen = "login"
    
    var body: some View {
        VStack {
            if currentScreen == "login" {
                LoginScreen(screen: $currentScreen)
                    .transition(.opacity)
            } else if currentScreen == "onboarding" {
                OnboardingScreen(screen: $currentScreen)
                    .transition(.opacity)
            } else if currentScreen == "home" {
                AppTabView()
                    .transition(.opacity)
            }
        }
    }
}

@available(iOS 16.0, *)
struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
