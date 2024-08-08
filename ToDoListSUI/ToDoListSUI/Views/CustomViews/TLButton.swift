//
//  TLButton.swift
//  ToDoListSUI
//
//  Created by Damir Nuriev on 8.08.2024.
//

import SwiftUI

struct TLButton: View {
    
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: Constants.buttonCornerRadius)
                    .foregroundStyle(background)
                Text(title)
                    .foregroundStyle(.white)
                    .bold()
            }
        }
        .padding()
    }
}

fileprivate enum Constants {
    static let buttonCornerRadius: CGFloat = 10.0
}
