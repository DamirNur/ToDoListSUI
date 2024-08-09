//
//  User.swift
//  ToDoListSUI
//
//  Created by Damir Nuriev on 7.08.2024.
//

import Foundation

struct User: Codable {
    let id: String
    let fullName: String
    let email: String
    let joined: TimeInterval
}
