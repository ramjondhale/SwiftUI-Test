//
//  EnvironmentObjectView.swift
//  SwiftUI Test
//
//  Created by Ram Jondhale on 22/10/23.
//

import SwiftUI

class GameSetting: ObservableObject {
    @Published var score = 0
}

struct EnvironmentObjectView: View {
    var body: some View {
        GameView()
            .environmentObject(GameSetting())
    }
}

struct GameView: View {
    @EnvironmentObject var setting: GameSetting

    var body: some View {
        Text("Score: \(setting.score)")
        Button("Increment Score") {
            setting.score += 1
        }
    }
}

#Preview {
    EnvironmentObjectView()
}
