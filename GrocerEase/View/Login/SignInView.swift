//
//  SignInView.swift
//  GrocerEase
//
//  Created by Digvijay Ingole on 2/5/25.
//

import SwiftUI
import CountryPicker

struct SignInView: View {
    
    @StateObject var AuthVM = AuthSignInViewModel()
    @State var showCountryPicker: Bool = false
    @State var selectedCountry: Country?
    
    var body: some View {
        ZStack {
            Image("sign_in_bg")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidht, height: .screenHeight)
            ScrollView{
                VStack(alignment: .leading)  {
                    Spacer().frame(height: .screenHeight * 0.5)
                    Text("Get your groceries\n with GrocerEase")
                        .font(.customfont(.SemiBold, fontSize: 26))
                        .foregroundColor(.primaryText)
                        .multilineTextAlignment(.leading)
                        .padding(.bottom,15)
                    
//                        Button{
////                            showCountryPicker = true
//                        }label: {
////                            if let selectedCountry = selectedCountry{
////                                Text("\(selectedCountry.isoCode.getFlag()) +\(selectedCountry.phoneCode )")
////                                    .font(.customfont(.SemiBold, fontSize:  18))
////                                    .foregroundColor(.primaryText)
                    TextField("Enter Your Email", text: $AuthVM.emailText)
                                    .foregroundColor(.black)
                                    .multilineTextAlignment(.leading)
                                    .keyboardType(UIKeyboardType.emailAddress)
                            //}
//                        }
                        .padding()
                        
                        .background(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .cornerRadius(10)
                    
                    Divider().padding(.bottom,10)
                    NavigationLink{
                        LoginView(AuthVM: AuthVM)
                    }label: {
                        Image("email_logo")
                            .resizable()
                            .frame(width: 25, height: 25)
                        Spacer()

                        Text(
                            "Continue with Email"
                        )
                        .font(.customfont(.SemiBold, fontSize: 18))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        Spacer()
                    }
                    .padding()
                    .background(Color.primary)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .cornerRadius(10)
                    Button{
                        
                    }label: {
                        Image("google_logo")
                            .resizable()
                            .frame(width: 20, height: 20)
                        Spacer()

                        Text(
                            "Continue with Google"
                        )
                        .font(.customfont(.SemiBold, fontSize: 18))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        Spacer()
                    }
                    .padding()
                    .background(Color(hex: "5383EC"))
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .cornerRadius(10)
                    Button{
                        
                    }label: {
                        Image("apple_logo")
                            .resizable()
                            .frame(width: 20, height: 20)
                        Spacer()

                        Text(
                            "Continue with Apple"
                        )
                        .font(.customfont(.SemiBold, fontSize: 18))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        Spacer()
                    }
                    .padding()
                    .background(.white)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .cornerRadius(10)
                    
                }
                .padding(20)
                .frame(width: .screenWidht)
            }
        }
        .onAppear{
            self.selectedCountry = Country(phoneCode:"1", isoCode: "US")
        }
        .sheet(isPresented: $showCountryPicker, content: {CountryPickerView(country: $selectedCountry)})
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .ignoresSafeArea()
    
    }
}

#Preview {
    SignInView()
}
