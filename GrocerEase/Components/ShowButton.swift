//
//  ShowButton.swift
//  GrocerEase
//
//  Created by Digvijay Ingole on 2/6/25.
//

import SwiftUI

struct ShowButton: ViewModifier {
    @Binding var isShow: Bool
    
    public func body(content: Content) -> some View {
        HStack{
            content
            Button{
                isShow.toggle()
            } label:{
                Image(systemName: isShow == true ? "eye.fill": "eye.slash.fill")
                    .foregroundColor(.textTitle)
            }
        }
    }
}

