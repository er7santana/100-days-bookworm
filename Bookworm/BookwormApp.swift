//
//  BookwormApp.swift
//  Bookworm
//
//  Created by Eliezer Rodrigo Beltramin de Sant Ana on 31/07/24.
//

import SwiftData
import SwiftUI

@main
struct BookwormApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: [Student.self, Book.self]) // Playground
    }
}
