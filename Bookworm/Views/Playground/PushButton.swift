//
//  PushButton.swift
//  Bookworm
//
//  Created by Eliezer Rodrigo Beltramin de Sant Ana on 31/07/24.
//

import SwiftUI

struct PushButton: View {
    
    let title: String
    @Binding var isOn: Bool
    
    var onColors = [Color.red, .yellow]
    var offColors = [Color(white: 0.6), Color(white: 0.4)]
    
    var body: some View {
        Button(title) {
            isOn.toggle()
        }
        .padding()
        .background(LinearGradient(colors: isOn ? onColors : offColors,
                                   startPoint: .top,
                                   endPoint: .bottom))
        .foregroundStyle(.white)
        .clipShape(.capsule)
        .shadow(radius: isOn ? 0 : 5) 
    }
}

#Preview {
    PushButton(title: "Something", isOn: .constant(true))
}
