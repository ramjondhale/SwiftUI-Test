//
//  ObservedObjectView.swift
//  SwiftUI Test
//
//  Created by Ram Jondhale on 21/10/23.
//

import SwiftUI

class UserSetting: ObservableObject {
    @Published var username = "Anonymous"
}

struct ObservedObjectView: View {
    @ObservedObject var userSetting = UserSetting()

    var body: some View {
        VStack {
            Text("Hello \(userSetting.username)")
            Button(action: {
                userSetting.username = "John Doe"
            }, label: {
                Text("Change UserName")
            })
            .padding()
        }
    }
}

#Preview {
    ObservedObjectView()
}
