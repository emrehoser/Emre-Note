//
//  Emre_NoteApp.swift
//  Emre Note
//
//  Created by Emre Hoşer on 28.02.2023.
//

import SwiftUI

@main
struct Emre_NoteApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
