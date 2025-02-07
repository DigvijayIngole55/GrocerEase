//
//  WelcomeView.swift
//  GrocerEase
//
//  Created by Digvijay Ingole on 2/5/25.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack{
            Image("welcome_bg")
                .resizable()
                .scaledToFill()
                .overlay(Color.black.opacity(0.1))
                .frame(width: .screenWidht, height: .screenHeight)
            VStack{
                Spacer()
                Image("logo_white")
                    .resizable()
                    .frame(width: 100,height: 100)
                Text("Welcome\nto our store")
                    .font(.customfont(.SemiBold, fontSize: 48))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                Text("Get your groceries as fast as one hour")
                    .font(.customfont(.Medium, fontSize: 16))
                    .foregroundColor(.white.opacity(0.7))
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 20)
                NavigationLink{
                    SignInView()
                }label: {
                    RoundedButton(title: "Get Started",onTap: {})

                }
                
                Spacer().frame(height: 60)
                
            }
            .padding(.horizontal,20)
        }.navigationTitle("")
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
        .ignoresSafeArea()
    }
}

#Preview {
    NavigationView{
        WelcomeView()
    }
}
