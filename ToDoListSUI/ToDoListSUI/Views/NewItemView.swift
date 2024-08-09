//
//  NewItemView.swift
//  ToDoListSUI
//
//  Created by Damir Nuriev on 7.08.2024.
//

import SwiftUI

struct NewItemView: View {
    @StateObject var viewModel = NewItemViewModel()
    @Binding var newItemPresented: Bool
    
    var body: some View {
        VStack {
            Text(AppStrings.NewItemViewStrings.title)
                .font(AppFonts.title.font)
                .padding()
            
            Form {
                TextField(AppStrings.NewItemViewStrings.formTitle,
                          text: $viewModel.title)
                .textFieldStyle(DefaultTextFieldStyle())
                
                DatePicker(AppStrings.NewItemViewStrings.formDate,
                           selection: $viewModel.dueDate)
                .datePickerStyle(GraphicalDatePickerStyle())
                
                TLButton(
                    title: AppStrings.NewItemViewStrings.buttonTitle,
                    background: .blue) {
                        if viewModel.canSave {
                            viewModel.save()
                            newItemPresented = false
                        } else {
                            viewModel.showAlert = true
                        }
                    }
            }
            .alert(isPresented: $viewModel.showAlert) {
                Alert(
                    title: Text(AppStrings.NewItemViewStrings.alertTitle),
                    message: Text(AppStrings.NewItemViewStrings.alertMessage)
                )
            }
        }
    }
}

#Preview {
    NewItemView(newItemPresented: Binding(get: {
        return true
    }, set: { _ in
        
    }))
}
