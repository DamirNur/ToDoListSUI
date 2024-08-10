//
//  ToDoListItemViewModel.swift
//  ToDoListSUI
//
//  Created by Damir Nuriev on 7.08.2024.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

final class ToDoListItemViewModel: ObservableObject {
    init() {}
    
    func toggleIsDone(item: ToDoListItem) {
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection(AppStrings.DBCollections.users)
            .document(uid)
            .collection(AppStrings.DBCollections.todos)
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }
}
