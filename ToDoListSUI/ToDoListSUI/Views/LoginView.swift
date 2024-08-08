//
//  LoginView.swift
//  ToDoListSUI
//
//  Created by Damir Nuriev on 7.08.2024.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            VStack {
                HeaderView()
                
                Form {
                    TextField(AppStrings.LoginViewStrings.emailText, text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    SecureField(AppStrings.LoginViewStrings.passwordText, text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    Button {
                        // Add actions
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundStyle(.blue)
                            Text(AppStrings.LoginViewStrings.loginButton)
                                .foregroundStyle(.white)
                                .bold()
                        }
                    }
                    .padding(.horizontal, 20)
                }
                
                VStack {
                    Text(AppStrings.LoginViewStrings.createAccountText)
                    NavigationLink(AppStrings.LoginViewStrings.createAccountButton, 
                                   destination: RegisterView())
                }
                .padding(50)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
