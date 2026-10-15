//
//  ContentView.swift
//  Connecto
//
//  Created by Sandra Karo on 11.10.2026.
//

import SwiftUI

/**
 extension with functions for adding custom font
 */

struct ContentView: View {
    
    @State private var username:String = ""
    @State private var password:String = ""
    @Binding var isLoggedIn: Bool
    
    var body: some View {
        
        ZStack {
            Color.white.ignoresSafeArea()
            
            VStack {
                // App title components
                Text("Connecto")
                    .font(.custom("Rockwell-Bold", size: 40, relativeTo: .body))
                    .foregroundStyle(.purple)
                
                // Login form components
                    VStack {
                        // Username field components
                        TextField(
                            text: $username,
                            prompt: Text("Username")
                        ) {
                            Text("Username")
                        }
                        .textFieldStyle(.roundedBorder)
                        .disableAutocorrection(true)
                        .textInputAutocapitalization(.never)
                        .padding(15)
                        
                        //-------------------------------
                        // Password field components
                        SecureField(
                            text: $password,
                            prompt: Text("Password")
                        ) {
                            Text("Password")
                        }
                        .textFieldStyle(.roundedBorder)
                        .disableAutocorrection(true)
                        .textInputAutocapitalization(.never)
                        .padding(15)

                        Button("Log in") {
                            // Submit logic goes here
                            withAnimation {
                                isLoggedIn = true
                            }
                        }
                        .buttonStyle(.bordered)
                        .foregroundStyle(.white)
                        .background(Color.purple)
                        .clipShape(RoundedRectangle(cornerRadius: 4))
                        
                        
                    }
                    //-------------------------------
                    // Entire Form design features
                    .padding(.top, 15)
                    .padding(.bottom, 20)
                    .background(Color(white: 0.95))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding(30)
                
            }
            //-------------------------------
            // Entire VStack design features
            .textFieldStyle(.roundedBorder)
            .padding(.top, 50)

            
        }
    }
}

#Preview {
    ContentView(isLoggedIn: .constant(false))
}
