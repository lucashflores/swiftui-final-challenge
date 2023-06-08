//
//  OnboardingView.swift
//  swiftui-final-challenge
//
//  Created by Lucas Flores on 06/06/23.
//



////
//

//
//Text("Começar")
//    .font(.body)
//    .bold()
////                            .padding(16)
//    .foregroundColor(.white)
//    .frame(maxWidth: .infinity)
//    .padding(.horizontal, 30)
//    .background(Color("transparent_button_color"))
//    .cornerRadius(10)

import SwiftUI

@available(iOS 16.0, *)
struct OnboardingScreen: View {
    @Binding var screen: String
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Image("bg_onboarding")
                .resizable()
                .scaledToFill()

            VStack(spacing: 24) {
                VStack(spacing: 16) {
                    VStack(alignment: .leading) {
                        Image(systemName: "gamecontroller.fill")
                            .resizable()
                            .foregroundColor(.white)
                            .frame(width: 80, height: 50)
                        
                        Text("Mostre ao mundo seus jogos favoritos")
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.white)
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Seus jogos em um só lugar")
                            .foregroundColor(.white)
                            .bold()
                            .font(.callout)
                        
                        Text("Adicione, favorite e compartilhe os games que você já jogou.")
                            .foregroundColor(.white)
                            .font(.callout)
                        
                    }
                }
                
                Button {
                    next()
                } label: {
                    HStack {
                        Text("Começar")
                            .font(.body)
                            .bold()
                            
                            .foregroundColor(.white)
                            
                        
                        Image(systemName: "arrow.right")
                            .scaleEffect(1.25)
                            .foregroundColor(.white)
                    }
                    .padding(16)
                    .frame(maxWidth: .infinity)
                    .background(Color("transparent_button_color"))
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color("game_purple"), style: StrokeStyle(lineWidth: 1.2)))
                }
            }.frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 30)
                .padding(.bottom, 80)
        }.ignoresSafeArea()
    }
    func next() { 
            withAnimation {
                screen = "home"
            }
        }
}

@available(iOS 16.0, *)
struct OnboardingScreen_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingScreen(screen: .constant("onboarding"))
    }
}
