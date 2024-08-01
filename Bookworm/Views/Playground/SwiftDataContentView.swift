//
//  SwiftDataContentView.swift
//  Bookworm
//
//  Created by Eliezer Rodrigo Beltramin de Sant Ana on 31/07/24.
//

import SwiftData
import SwiftUI

struct SwiftDataContentView: View {
    
    @Query var students: [Student]
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        NavigationStack {
            List(students) { student in
                Text(student.name)
            }
            .navigationTitle("Classroom")
            .toolbar {
                Button("Add") {
                    let firstNames = [
                        "Thiery",
                        "Harry",
                        "Frank",
                        "Lionel",
                        "Cristiano",
                    ]
                    let lastNames = [
                        "Henry",
                        "Messi",
                        "Berkamp",
                        "Assis",
                    ]
                    
                    let chosenFirstName = firstNames.randomElement() ?? ""
                    let chosenLastName = lastNames.randomElement() ?? ""
                    
                    let student = Student(id: UUID(), name: "\(chosenFirstName) \(chosenLastName)")
                    
                    modelContext.insert(student)
                }
            }
        }
    }
}

#Preview {
    SwiftDataContentView()
        .modelContainer(for: Student.self)
}
