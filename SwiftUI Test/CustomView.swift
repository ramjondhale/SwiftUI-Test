//
//  CustomView.swift
//  SwiftUI Test
//
//  Created by Ram Jondhale on 21/10/23.
//

import SwiftUI

struct CustomView: View {
    var body: some View {
        Text("Hello, World!")
            .frame(width: 200, height: 50)
            .background {
                Image("background")
                    .resizable(resizingMode: .tile)
                    .opacity(0.5)
            }
            .fontWeight(.heavy)
            .border(.black, width: 2)
    }
}

#Preview {
    CustomView()
}
