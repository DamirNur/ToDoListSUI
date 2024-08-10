//
//  ToDoListViewModel.swift
//  ToDoListSUI
//
//  Created by Damir Nuriev on 7.08.2024.
//

import Foundation
import FirebaseFirestore

final class ToDoListViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    func delete(id: String) {
        let db = Firestore.firestore()
        db.collection(AppStrings.DBCollections.users)
            .document(userId)
            .collection(AppStrings.DBCollections.todos)
            .document(id)
            .delete()
    }
}
