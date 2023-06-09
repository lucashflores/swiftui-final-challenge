//
//  AboutView.swift
//  swiftui-final-challenge
//
//  Created by Lucas Flores on 07/06/23.
//

import SwiftUI

struct AboutScreen: View {
    var body: some View {
        ZStack(alignment: .bottom) {
//            ScrollView {
                Image("background")
                    .resizable()
                    .scaledToFill()
                
                VStack(spacing: 20) {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Sobre")
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(Color("game_purple"))
                            .frame(maxWidth: .infinity, alignment: .leading)

                        Text("Jogos para todos os gostos")
                            .font(.title3)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }

                    
                    Text("There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.")
                        .font(.body)
                        .foregroundColor(Color(uiColor: .systemGray))
                }
                .padding(.bottom, 120)
                .padding(.horizontal, 30)
                .padding(.top, 30)
                .frame(maxWidth: .infinity)
                .background(.white)
            .cornerRadius(12)
//            }
        }.ignoresSafeArea()
    }
}

struct AboutScreen_Previews: PreviewProvider {
    static var previews: some View {
        AboutScreen()
    }
}
