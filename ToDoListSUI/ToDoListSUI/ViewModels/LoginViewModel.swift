//
//  LoginViewModel.swift
//  ToDoListSUI
//
//  Created by Damir Nuriev on 7.08.2024.
//

import Foundation
import FirebaseAuth

final class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {}
    
    func login() {
        guard validate() else {
            return
        }
        
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
    private func validate() -> Bool {
        errorMessage = ""
        
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty
        else {
            errorMessage = AppStrings.LoginViewStrings.errorFillFields
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            errorMessage = AppStrings.LoginViewStrings.errorValidEmail
            return false
        }
        
        return true
    }
}
