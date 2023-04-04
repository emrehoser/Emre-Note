//
//  NoteView.swift
//  Emre Note
//
//  Created by Emre Hoşer on 7.03.2023.
//

import SwiftUI

struct NoteView: View {
    @State private var noteText = ""
        
        var body: some View {
            VStack {
                Text("Note:")
                    .font(.headline)
                
                TextEditor(text: $noteText)
                    .border(Color.gray)
                    .padding()
                
                Button("Save") {
                    // Do something with the note text
                }
                .padding()
            }
        }
}

struct NoteView_Previews: PreviewProvider {
    static var previews: some View {
        NoteView()
    }
}
