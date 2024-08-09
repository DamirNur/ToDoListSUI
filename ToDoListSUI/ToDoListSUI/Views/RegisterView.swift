//
//  RegisterView.swift
//  ToDoListSUI
//
//  Created by Damir Nuriev on 7.08.2024.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject var viewModel = RegisterViewModel()
    
    var body: some View {
        VStack {
            HeaderView(title: AppStrings.RegisterViewStrings.title,
                       subtitle: AppStrings.RegisterViewStrings.subtitle,
                       angle: Constants.headerViewAngle,
                       background: .register)
            .offset(y: Constants.headerViewOffset)
            
            Form {
                TextField(AppStrings.RegisterViewStrings.fullName, text: $viewModel.fullName)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .textInputAutocapitalization(.none)
                    .autocorrectionDisabled()
                TextField(AppStrings.RegisterViewStrings.emailText, text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .textInputAutocapitalization(.none)
                    .autocorrectionDisabled()
                SecureField(AppStrings.RegisterViewStrings.passwordText, text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .textInputAutocapitalization(.none)
                    .autocorrectionDisabled()
                
                TLButton(
                    title: AppStrings.RegisterViewStrings.createButton,
                    background: .green
                ) {
                    viewModel.register()
                }
            }
            .offset(y: Constants.formOffset)
        }
    }
}

fileprivate enum Constants {
    static let headerViewAngle: CGFloat = -15.0
    static let headerViewOffset: CGFloat = -40.0
    static let formOffset: CGFloat = -90.0
}
