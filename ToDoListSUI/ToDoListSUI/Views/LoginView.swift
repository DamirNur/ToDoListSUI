//
//  LoginView.swift
//  ToDoListSUI
//
//  Created by Damir Nuriev on 7.08.2024.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                HeaderView(title: AppStrings.LoginViewStrings.title,
                           subtitle: AppStrings.LoginViewStrings.subtitle,
                           angle: Constants.headerViewAngle,
                           background: .login)
                
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundStyle(.red)
                    }
                    
                    TextField(AppStrings.LoginViewStrings.emailText, text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .textInputAutocapitalization(.none)
                        .autocorrectionDisabled()
                    SecureField(AppStrings.LoginViewStrings.passwordText, text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .textInputAutocapitalization(.none)
                        .autocorrectionDisabled()
                    
                    TLButton(
                        title: AppStrings.LoginViewStrings.loginButton,
                        background: .blue
                    ) {
                        viewModel.login()
                    }
                }
                .offset(y: Constants.formOffset)
                
                VStack {
                    Text(AppStrings.LoginViewStrings.createAccountText)
                    NavigationLink(AppStrings.LoginViewStrings.createAccountButton, 
                                   destination: RegisterView())
                }
                .padding(Constants.registerButtonPadding)
                
                Spacer()
            }
        }
    }
}

fileprivate enum Constants {
    static let headerViewAngle: CGFloat = 15.0
    static let registerButtonPadding: CGFloat = 50.0
    static let formOffset: CGFloat = -50.0
}
