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
                
            }
            .navigationTitle(AppStrings.ProfileViewStrings.title)
        }
    }
}

#Preview {
    ProfileView()
}
