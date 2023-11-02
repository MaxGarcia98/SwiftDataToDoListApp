//
//  SwiftDataToDoListApp.swift
//  SwiftDataToDoList
//
//  Created by Maximino Garcia II on 11/2/23.
//

import SwiftUI
import SwiftData

@main
struct SwiftDataToDoListApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: ToDoItem.self)
        }
    }
}
