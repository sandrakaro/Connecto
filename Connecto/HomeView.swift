//
//  HomeView.swift
//  Connecto
//
//  Created by Sandra Karo on 15.10.2026.
//

import SwiftUI

struct HomeView: View {
    
    @Binding var isLoggedIn:Bool
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Button("Log out") {
                withAnimation {
                    isLoggedIn = false
                }
            }
        }
        .padding()
        
    }
}
#Preview {
    HomeView(isLoggedIn: .constant(false))
}
