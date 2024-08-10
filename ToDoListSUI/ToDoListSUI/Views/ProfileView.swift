//
//  ProfileView.swift
//  ToDoListSUI
//
//  Created by Damir Nuriev on 7.08.2024.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                if let user = viewModel.user {
                    profile(user: user)
                } else {
                    Text(AppStrings.ProfileViewStrings.loadingText)
                }
            }
            .navigationTitle(AppStrings.ProfileViewStrings.title)
        }
        .onAppear {
            viewModel.fetchUser()
        }
    }
    
    @ViewBuilder
    func profile(user: User) -> some View {
        Image(systemName: "person.circle")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundStyle(.blue)
            .frame(width: Constants.imageSize, height: Constants.imageSize)
            .padding()
        
        VStack(alignment: .leading) {
            HStack {
                Text(AppStrings.ProfileViewStrings.nameTitle)
                    .bold()
                Text(user.fullName)
            }
            
            HStack {
                Text(AppStrings.ProfileViewStrings.emailTitle)
                    .bold()
                Text(user.email)
            }
            
            HStack {
                Text(AppStrings.ProfileViewStrings.membertitle)
                    .bold()
                Text("\(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .shortened))")
            }
        }
        
        TLButton(
            title: AppStrings.ProfileViewStrings.logOut,
            background: .red
        ) {
            viewModel.logOut()
        }
        .frame(width: Constants.buttonWidth,
               height: Constants.buttonHeight)
        
        Spacer()
    }
}

fileprivate enum Constants {
    static let imageSize: CGFloat = 125.0
    static let buttonWidth: CGFloat = 180.0
    static let buttonHeight: CGFloat = 50.0
}
