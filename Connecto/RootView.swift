//
//  RootView.swift
//  Connecto
//
//  Created by Sandra Karo on 15.10.2026.
//

import SwiftUI

struct RootView: View {
    @State private var isLoggedIn = false

    var body: some View {
        if isLoggedIn {
            HomeView(isLoggedIn: $isLoggedIn)
        } else {
            ContentView(isLoggedIn: $isLoggedIn)
        }
    }
}

#Preview {
    RootView()
}
