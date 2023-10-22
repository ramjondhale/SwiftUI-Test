//
//  FormView.swift
//  SwiftUI Test
//
//  Created by Ram Jondhale on 21/10/23.
//

import SwiftUI

struct FormView: View {
    @State private var username = ""
    @State private var email = ""
    @State private var password = ""

    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Personal Information", text: $username)
                    TextField("Email", text: $email)
                } header: {
                    Text("Personal Information")
                        .font(.title2)
                        .bold()
                }
                Section {
                    SecureField("Password", text: $password)
                } header: {
                    Text("Login Credentials")
                        .font(.title2)
                        .bold()
                }

                Section {
                    Button(action: register, label: {
                        Text("Register")
                    })
                }
            }
            .navigationTitle("Registration Form")
        }
    }

    func register() {
        // Implement registration functionality
        print("Register tapped")
    }
}

#Preview {
    FormView()
}
