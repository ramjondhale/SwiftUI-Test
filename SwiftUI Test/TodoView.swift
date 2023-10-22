//
//  TodoView.swift
//  SwiftUI Test
//
//  Created by Ram Jondhale on 21/10/23.
//

import SwiftUI

struct TodoView: View {
    let tasks = ["Task 1", "Task 2", "Task 3", "Task 4", "Task 5"]

    var body: some View {
        List(tasks, id: \.self) { task in
            Text(task)
        }
    }
}

#Preview {
    TodoView()
}
