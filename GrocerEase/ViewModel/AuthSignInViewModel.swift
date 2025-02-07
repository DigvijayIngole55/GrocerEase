//
//  AuthSignInViewModel.swift
//  GrocerEase
//
//  Created by Digvijay Ingole on 2/6/25.
//

import SwiftUI

class AuthSignInViewModel: ObservableObject {
    static var shared: AuthSignInViewModel = AuthSignInViewModel()
    
    @Published var emailText: String = ""
    @Published var passwordText: String = ""
    @Published var showPassword: Bool = false
}
