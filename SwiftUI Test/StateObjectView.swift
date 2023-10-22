//
//  StateObjectView.swift
//  SwiftUI Test
//
//  Created by Ram Jondhale on 22/10/23.
//

import SwiftUI

class TimeManager: ObservableObject {
    @Published var timerCount = 0

    private var timer = Timer()

    func start() {
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { _ in
            self.timerCount += 1
        })
    }

    func stop() {
        timer.invalidate()
    }
}

struct StateObjectView: View {
    @ObservedObject var timerManager = TimeManager()

    var body: some View {
        VStack {
            Text("Timer count: \(timerManager.timerCount)")
            Button("Start Timer") {
                timerManager.start()
            }
            Button("Timer Stop") {
                timerManager.stop()
            }
        }
    }
}

#Preview {
    StateObjectView()
}
