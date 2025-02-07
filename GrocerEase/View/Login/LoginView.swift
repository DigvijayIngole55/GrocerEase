//
//  LoginView.swift
//  GrocerEase
//
//  Created by Digvijay Ingole on 2/6/25.
//

import SwiftUI

struct LoginView: View {
    @Environment(\.dismiss) var dismiss
    @ObservedObject  var AuthVM: AuthSignInViewModel
    var body: some View {
        ZStack{
            Color(.white)

            Image("bottom_bg")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidht, height: .screenHeight)
            VStack{
                Image("logo_color")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80,height: 50)
                    .padding(.bottom, .screenWidht * 0.12)
                Text("Log In")
                    .font(.customfont(.SemiBold, fontSize: 26))
                    .foregroundColor(.primaryText)
                    .frame(minWidth: 0,maxWidth: .infinity,alignment: .leading)
                    .padding(.bottom,4)
                Text("Enter you Email and Password.")
                    .font(.customfont(.SemiBold, fontSize: 16))
                    .foregroundColor(.secondaryText)
                    .frame(minWidth: 0,maxWidth: .infinity,alignment: .leading)
                    .padding(.bottom, .screenWidht * 0.1)
                LineTextField(txt: $AuthVM.emailText, label: "Email", hintText: "Enter your email address",keyboardType: UIKeyboardType.emailAddress)
                    .padding(.bottom, .screenWidht * 0.07)
                LineSecureField(txt: $AuthVM.passwordText, label: "Password", hintText: "Enter your password", isPassword: $AuthVM.showPassword)
                    .padding(.bottom, .screenWidht * 0.02)
                Button{} label: {
                    Text("Forgot Password?")
                        .font(.customfont(.Medium, fontSize: 14))
                        .foregroundColor(.primaryText)
                       
                }
                .frame(minWidth: 0,maxWidth: .infinity,alignment: .trailing)
                .padding(.bottom, .screenWidht * 0.05)
                
                RoundedButton(title: "Log In",onTap: {})
                    .padding(.bottom, .screenWidht * 0.03)

                HStack{
                    Text("Don't have an account?")
                        .font(.customfont(.SemiBold, fontSize: 14))
                        .foregroundColor(.primaryText)
                    Button{}
                    label:{
                        Text("Sign up?")
                            .font(.customfont(.SemiBold, fontSize: 14))
                            .foregroundColor(.primary)
                    }
                }
                Spacer()
            }
            .padding(.top,.topInsets + 64)
            .padding(.horizontal, 20)
            .padding(.bottom,.bottomInsets)
            VStack{
                HStack{
                    Button{
                        dismiss()
                    }label: {
                        Image("back_btn")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                    }
                    
                    Spacer()
                }
                Spacer()
            }
            .padding(.top,.topInsets )
            .padding(.horizontal, 20)
        }.navigationTitle("")
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
            .ignoresSafeArea()
    }
}

#Preview {
    LoginView(AuthVM:  AuthSignInViewModel())
}
