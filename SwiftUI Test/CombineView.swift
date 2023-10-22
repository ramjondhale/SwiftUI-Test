//
//  CombineView.swift
//  SwiftUI Test
//
//  Created by Ram Jondhale on 22/10/23.
//

import Combine
import SwiftUI

struct CombineView: View {
    @StateObject private var jokeFetcher = JokeFetcher()

    var body: some View {
        VStack {
            Text(jokeFetcher.joke)
                .padding()
            Button("Fetch Joke") {
                jokeFetcher.fetchJokes()
            }
        }
        .onAppear {
            jokeFetcher.fetchJokes()
        }
    }
}

class JokeFetcher: ObservableObject {

    @Published var joke: String = ""

    private var cancellable: AnyCancellable?

    private let jokes = [
        "Why don't scientists trust atoms? Because they make up everything!",
        "Why did the bicycle fall over? Because it was two tired!",
        "Why don't some animals play cards? Because they are afraid of cheetahs!",
        "Why did the scarecrow win an award? Because he was outstanding in his field!"
    ]

    func fetchJokes() {
        // Networking code to fetch jokes

        if let randomJoke = jokes.randomElement() {
            joke = randomJoke
        }
    }

    deinit {
        cancellable?.cancel()
    }
}

#Preview {
    CombineView()
}
