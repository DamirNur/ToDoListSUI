//
//  ToDoListView.swift
//  ToDoListSUI
//
//  Created by Damir Nuriev on 7.08.2024.
//

import SwiftUI
import FirebaseFirestore

struct ToDoListView: View {
    @StateObject var viewModel: ToDoListViewModel
    @FirestoreQuery var items: [ToDoListItem]
    
    init(userId: String) {
        self._items = FirestoreQuery(
            collectionPath: "\(AppStrings.DBCollections.users)/\(userId)/\(AppStrings.DBCollections.todos)"
        )
        self._viewModel = StateObject(
            wrappedValue: ToDoListViewModel(userId: userId)
        )
    }
    
    var body: some View {
        NavigationView {
            VStack {
                List(items) { item in
                    ToDoListItemView(item: item)
                        .swipeActions {
                            Button(AppStrings.ToDoListViewStrings.deleteSwipe) {
                                viewModel.delete(id: item.id)
                            }
                            .tint(.red)
                        }
                }
                .listStyle(PlainListStyle())
            }
            .navigationTitle(AppStrings.ToDoListViewStrings.title)
            .toolbar {
                Button {
                    viewModel.showingNewItemView = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showingNewItemView) {
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
            }
        }
    }
}
