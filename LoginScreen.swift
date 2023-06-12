//
//  LoginScreen.swift
//  swiftui-final-challenge
//
//  Created by Lucas Flores on 06/06/23.
//

import SwiftUI

@available(iOS 16.0, *)
struct LoginScreen: View {
    @Binding var screen: String
    @State var nameField = ""
    @State var passwordField = ""
    @State var passwordHidden = false
    
    var body: some View {
        let eyeImageName = passwordHidden ? "eye" : "eye.slash"
        let createAccountEnabled = passwordField.count > 0 && nameField.count > 0 ? true : false
        let createAccountButtonColor = createAccountEnabled ? Color("game_purple") : Color(uiColor: .systemGray)
        let nameFieldColor = nameField.count > 0 ? Color(uiColor: .systemGreen) : Color(uiColor: .systemGray)
        let passwordFieldColor = passwordField.count > 0 ? Color(uiColor: .systemGreen) : Color(uiColor: .systemGray)
        
        ZStack(alignment: .bottom) {
            Image("background")
                .resizable()
                .scaledToFit()
            
            VStack(spacing: 20) {
                VStack(spacing: 5) {
                    Text("Crie sua conta")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(Color("game_purple"))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("Mostre seus jogos. Descubra seus gostos.\nSua **gamelist** nunca mais será a mesma")
                        .font(.body)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                
                VStack(alignment: .leading) {
                    Text("Nome").frame(maxWidth: .infinity, alignment: .leading)
                    
                    TextField(text: $nameField) {
                        Text("Nome")
                    }
                    .textInputAutocapitalization(.never)
                    .padding(.horizontal)
                    .frame(maxWidth: .infinity, maxHeight: 45)
                    .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(nameFieldColor, style: StrokeStyle(lineWidth: 0.5)))
                    
                    
                    Text("max. 40").frame(maxWidth: .infinity, alignment: .trailing)
                        .foregroundColor(Color(uiColor: .systemGray))
                        .font(.caption)
                }
                
                VStack(alignment: .leading) {
                    Text("Senha").frame(maxWidth: .infinity, alignment: .leading)
                    
                    
                    HStack {
                        if !passwordHidden {
                            TextField(text: $passwordField, label: {
                                Text("Senha")
                            
                            })
                            .textInputAutocapitalization(.never)
                            .padding(.horizontal)
                            .frame(maxWidth: .infinity, maxHeight: 45)
                        } else {
                            SecureField(text: $passwordField, label: {
                                Text("Senha")
                            
                            })
                            .textInputAutocapitalization(.never)
                            .padding(.horizontal)
                            .frame(maxWidth: .infinity, maxHeight: 45)
                        }
                    
                        
                        Button {
                            passwordHidden.toggle()
                        } label: {
                            Image(systemName: eyeImageName)
                                .foregroundColor(Color(uiColor: .systemGray))
                                .padding()
                           
                        }

                        
                    }.overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(passwordFieldColor, style: StrokeStyle(lineWidth: 0.5)))
                    

                    
                    

                    
                    Text("0").frame(maxWidth: .infinity, alignment: .trailing)
                        .foregroundColor(Color(uiColor: .systemGray))
                        .font(.caption)
                }.padding(.bottom, 40)
                
                
                
                Button {
                    next()
                } label: {
                    Text("Criar conta")
                        .font(.body)
                        .bold()
                        .padding(16)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .background(createAccountButtonColor)
                        .cornerRadius(10)
                }
                .disabled(!createAccountEnabled)

                
            }
            .padding(.bottom, 50)
            .padding(.horizontal, 30)
            .padding(.top, 30)
            .frame(maxWidth: .infinity)
            .background(.white)
            .cornerRadius(12)
                
        }.ignoresSafeArea()
    }
    
    func next() {
            withAnimation {
                screen = "onboarding"
            }
        }
    
}

@available(iOS 16.0, *)
struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen(screen:.constant("login"))
    }
}
