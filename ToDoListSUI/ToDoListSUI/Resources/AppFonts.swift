//
//  AppFonts.swift
//  ToDoListSUI
//
//  Created by Damir Nuriev on 9.08.2024.
//

import SwiftUI

enum AppFonts {
    case title
    case subtitle
    
    var font: Font {
        switch self {
        case .title:
            Font.system(size: 32, weight: .bold, design: .default)
        case .subtitle:
            Font.system(size: 24, weight: .regular, design: .default)
        }
    }
}
