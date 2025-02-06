//
//  SignInView.swift
//  GrocerEase
//
//  Created by Digvijay Ingole on 2/5/25.
//

import SwiftUI
import CountryPicker

struct SignInView: View {
    
    @State var textMobile: String = ""
    @State var showCountryPicker: Bool = false
    @State var selectedCountry: Country?
    
    var body: some View {
        ZStack {
            Image("sign_in_bg")
                .resizable()
            ScrollView{
                VStack(alignment: .leading)  {
                    Spacer().frame(height: .screenHeight * 0.5)
                    Text("Get your groceries\n with GrocerEase")
                        .font(.customfont(.SemiBold, fontSize: 26))
                        .foregroundColor(.primaryText)
                        .multilineTextAlignment(.leading)
                        .padding(.bottom,15)
                    
                        Button{
                            showCountryPicker = true
                        }label: {
                            if let selectedCountry = selectedCountry{
                                Text("\(selectedCountry.isoCode.getFlag()) +\(selectedCountry.phoneCode )")
                                    .font(.customfont(.SemiBold, fontSize:  18))
                                    .foregroundColor(.primaryText)
                                TextField("Enter Your Number", text: $textMobile)
                                    .multilineTextAlignment(.leading)
                            }
                        }
                        .padding()
                        
                        .background(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .cornerRadius(10)
                    
                    Divider().padding(.bottom,10)
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
                        Image("facebook_logo")
                            .resizable()
                            .frame(width: 25, height: 25)
                        Spacer()

                        Text(
                            "Continue with Facebook"
                        )
                        .font(.customfont(.SemiBold, fontSize: 18))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        Spacer()
                    }
                    .padding()
                    .background(Color(hex: "4A66AC"))
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
        .ignoresSafeArea()
    
    }
}

#Preview {
    SignInView()
}
