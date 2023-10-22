//
//  ContentView.swift
//  SwiftUI Test
//
//  Created by Ram Jondhale on 21/10/23.
//

import SwiftUI

struct ContentView: View {

    init() {
        let navBarAppearance = UINavigationBarAppearance()
        navBarAppearance.configureWithOpaqueBackground()
        navBarAppearance.backgroundColor = .systemMint
        UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
    }

    var body: some View {
        ZStack {
            NavigationStack {
                VStack {
                    ProfileView()
                    ButtonView(title: "Todo's")
                    NavigationLink(destination: DetailView()) {
                        Text("Go to detailed page")
                            .padding()
                            .font(.title)
                            .foregroundStyle(.white)
                            .background(.mint)
                            .cornerRadius(10)
                    }

                }
                .padding()
                .navigationTitle("Home")
                .navigationBarTitleDisplayMode(.large)
                .toolbar(content: {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button(action: {
                            print("Setting Tapped")
                        }, label: {
                            Text("Setting")
                        })
                    }
                })
            }
        }
        }

}

struct DetailView: View {
    var body: some View {
        Text("This is detailed view")
            .navigationTitle("Detail View")
    }
}

struct ProfileView: View {
    var body: some View {
        Image("profile")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 200)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.brown, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct ButtonView: View {
    let title: String

    var body: some View {
        Button {
            print("Hello")
        } label: {
            Text(title)
                .font(.title)
                .foregroundStyle(.white)
        }
        .padding()
        .background(LinearGradient(colors: [.purple, .pink], startPoint: .topLeading, endPoint: .bottomTrailing))
        .cornerRadius(10)
    }
}

#Preview {
    ContentView()
}
