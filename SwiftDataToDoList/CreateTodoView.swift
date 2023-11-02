//
//  CreateView.swift
//  SwiftDataToDoList
//
//  Created by Maximino Garcia II on 11/2/23.
//

import SwiftUI

struct CreateTodoView: View {
    
    @Environment(\.dismiss) var dismiss
    @Environment(\.modelContext) var context
    
    @State private var item = ToDoItem()
    
    var body: some View {
        List {
            TextField("Name", text: $item.title)
            DatePicker("Choose a date",
                       selection: $item.timestamp)
            Toggle("Important?", isOn: $item.isCritical)
            Button("Create") {
                withAnimation {
                    context.insert(item)
                }
                dismiss()
            }
        }
        .navigationTitle("Create ToDo")
    }
}

#Preview {
    CreateTodoView()
        .modelContainer(for: ToDoItem.self)
}
