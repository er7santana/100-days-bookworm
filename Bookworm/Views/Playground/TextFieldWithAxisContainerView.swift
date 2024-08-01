//
//  TextFieldWithAxisContainerView.swift
//  Bookworm
//
//  Created by Eliezer Rodrigo Beltramin de Sant Ana on 31/07/24.
//

import SwiftUI

struct TextFieldWithAxisContainerView: View {
    
    @AppStorage("notes") private var notes = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                TextField("Enter your text", text: $notes, axis: .vertical)
                    .textFieldStyle(.roundedBorder)
                    .navigationTitle("Notes")
                    .padding()
                
                Spacer()
            }
        }
    }
}

#Preview {
    TextFieldWithAxisContainerView()
}
