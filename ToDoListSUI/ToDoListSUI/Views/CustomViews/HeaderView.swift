//
//  HeaderView.swift
//  ToDoListSUI
//
//  Created by Damir Nuriev on 7.08.2024.
//

import SwiftUI

struct HeaderView: View {
    
    let title: String
    let subtitle: String
    let angle: Double
    let background: Color
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: .zero)
                .foregroundStyle(background)
                .rotationEffect(Angle(degrees: angle))
            
            VStack {
                Text(title)
                    .foregroundStyle(.white)
                    .font(AppFonts.title.font)
                Text(subtitle)
                    .foregroundStyle(.white)
                    .font(AppFonts.subtitle.font)
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
    static let upperViewVerticalOffset: CGFloat = -140
    
    static let titlePadding: CGFloat = 100
}
