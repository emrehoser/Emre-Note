//
//  Emre_NoteApp.swift
//  Emre Note
//
//  Created by Emre Hoşer on 28.02.2023.
//

import SwiftUI

@main
struct Emre_NoteApp: App {
    var body: some Scene {
        WindowGroup {
            let dateHolder = DateHolder()
            ContentView()
                .environmentObject(dateHolder)
        }
    }
}
