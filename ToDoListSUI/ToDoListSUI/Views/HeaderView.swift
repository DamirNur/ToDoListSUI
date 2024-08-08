//
//  HeaderView.swift
//  ToDoListSUI
//
//  Created by Damir Nuriev on 7.08.2024.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: .zero)
                .foregroundStyle(.mintGreen)
                .rotationEffect(Angle(degrees: UIConstants.upperViewRotation))
            
            VStack {
                Text(AppStrings.LoginViewStrings.title)
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .bold()
                Text(AppStrings.LoginViewStrings.subtitle)
                    .foregroundStyle(.white)
                    .font(.title3)
            }
            .padding(.top, UIConstants.titlePadding)
        }
        .frame(width: UIScreen.main.bounds.width * UIConstants.upperViewMultiplier,
               height: UIConstants.upperViewHeight)
        .offset(y: UIConstants.upperViewVerticalOffset)
    }
}

fileprivate enum UIConstants {
    static let upperViewMultiplier: CGFloat = 3.0
    static let upperViewHeight: CGFloat = 300.0
    static let upperViewRotation: CGFloat = 15.0
    static let upperViewVerticalOffset: CGFloat = -100
    
    static let titlePadding: CGFloat = 50
}
