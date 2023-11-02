//
//  ContentView.swift
//  SwiftDataToDoList
//
//  Created by Maximino Garcia II on 11/2/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showCreate = false
    
    var body: some View {
        NavigationStack {
            Text("Hello, world!")
                .toolbar {
                    ToolbarItem {
                        Button(action: {
                            showCreate.toggle()
                        }, label: {
                            Label("Add item", systemImage: "plus")
                        })
                    }
                }
                .sheet(isPresented: $showCreate, 
                       content: {
                    NavigationStack {
                        CreateTodoView()
                    }
                    .presentationDetents([.medium])
                })
        }
    }
}

#Preview {
    ContentView()
}
