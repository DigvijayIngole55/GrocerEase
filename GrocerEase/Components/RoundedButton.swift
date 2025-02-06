//
//  RoundedButton.swift
//  GrocerEase
//
//  Created by Digvijay Ingole on 2/5/25.
//

import SwiftUI

struct RoundedButton: View {
    @State var title: String = "Title"
    var onTap: (() -> ())?
    var body: some View {
        Button(action: {onTap?()}, label: {
            Text(title)
                .font(.customfont(.Regular, fontSize: 18))
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
        })
        .frame(minWidth: 0,maxWidth: .infinity,minHeight: 60,maxHeight: 60)
        
        .background(Color.primary)
        .cornerRadius(20)
    }
}

#Preview {
    RoundedButton().padding(20)
}
