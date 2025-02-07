//
//  LineTextField.swift
//  GrocerEase
//
//  Created by Digvijay Ingole on 2/6/25.
//

import SwiftUI

struct LineTextField: View {
    @Binding var txt: String
    @State var label: String
    @State var hintText: String
    @State var keyboardType: UIKeyboardType = .default
    var body: some View {
        VStack{
            Text(label)
                .font(.customfont(.SemiBold, fontSize: 16))
                .foregroundColor(.textTitle)
                .frame(minWidth: 0,maxWidth: .infinity,alignment: .leading)
                .padding(.bottom,4)
        
                TextField(hintText, text: $txt)
                .foregroundColor(.primaryText)
                    .keyboardType(keyboardType)
                    .autocorrectionDisabled(true)
                    .frame(height: 40)

            Divider()

        }
    }
}

struct LineSecureField: View {
    @Binding var txt: String
    @State var label: String
    @State var hintText: String
    @Binding var isPassword: Bool
    var body: some View {
        VStack{
            Text(label)
                .font(.customfont(.SemiBold, fontSize: 16))
                .foregroundColor(.textTitle)
                .frame(minWidth: 0,maxWidth: .infinity,alignment: .leading)
                .padding(.bottom,4)
            if(!isPassword){
                SecureField(hintText, text: $txt)
                .foregroundColor(.primaryText)
                .modifier(ShowButton(isShow: $isPassword))
                .autocorrectionDisabled(true)
                .frame(height: 40)            }
            else{
                TextField(hintText, text: $txt)
                    .foregroundColor(.primaryText)
                    .modifier(ShowButton(isShow: $isPassword))
                    .autocorrectionDisabled(true)
                    .frame(height: 40)
            }
            Divider()

        }
    }
}


