//
//  AppStrings.swift
//  ToDoListSUI
//
//  Created by Damir Nuriev on 7.08.2024.
//

import Foundation

struct AppStrings {
    enum LoginViewStrings {
        static let title = "To Do List"
        static let subtitle = "Get things done"
        static let emailText = "Email Adress"
        static let passwordText = "Password"
        static let loginButton = "Log In"
        static let createAccountText = "New around here?"
        static let createAccountButton = "Create an account"
        static let errorFillFields = "Please fill in all fields."
        static let errorValidEmail = "Please enter valid email."
    }
    
    enum RegisterViewStrings {
        static let title = "Register"
        static let subtitle = "Start organizing todos"
        static let fullName = "Full Name"
        static let emailText = "Email Adress"
        static let passwordText = "Password"
        static let createButton = "Create Account"
    }
    
    enum ToDoListViewStrings {
        static let title = "To Do List"
    }
    
    enum ProfileViewStrings {
        static let title = "Profile"
    }
    
    enum NewItemViewStrings {
        static let title = "New Item"
        static let formTitle = "Title"
        static let formDate = "Due Date"
        static let buttonTitle = "Save"
        static let alertTitle = "Error"
        static let alertMessage = "Please fill in all fields and select due date that is today or newer."
    }
}
