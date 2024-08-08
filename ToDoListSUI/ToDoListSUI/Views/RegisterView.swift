//
//  RegisterView.swift
//  ToDoListSUI
//
//  Created by Damir Nuriev on 7.08.2024.
//

import SwiftUI

struct RegisterView: View {
    
    @State var fullName = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            HeaderView(title: AppStrings.RegisterViewStrings.title,
                       subtitle: AppStrings.RegisterViewStrings.subtitle,
                       angle: Constants.headerViewAngle,
                       background: .register)
            .offset(y: -40)
            
            Form {
                TextField(AppStrings.RegisterViewStrings.fullName, text: $fullName)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .textInputAutocapitalization(.none)
                    .autocorrectionDisabled()
                TextField(AppStrings.RegisterViewStrings.emailText, text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .textInputAutocapitalization(.none)
                    .autocorrectionDisabled()
                SecureField(AppStrings.RegisterViewStrings.passwordText, text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .textInputAutocapitalization(.none)
                    .autocorrectionDisabled()
                
                TLButton(
                    title: AppStrings.RegisterViewStrings.createButton,
                    background: .green
                ) {
                    // Add Action
                }
            }
            .offset(y: Constants.formOffset)
        }
    }
}

fileprivate enum Constants {
    static let headerViewAngle: CGFloat = -15.0
    static let formOffset: CGFloat = -90.0
}

#Preview {
    RegisterView()
}
