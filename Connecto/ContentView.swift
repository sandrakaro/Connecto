//
//  ContentView.swift
//  Connecto
//
//  Created by Sandra Karo on 11.10.2026.
//

import SwiftUI

struct ContentView: View {
    
    @State private var username:String = ""
    @State private var password:String = ""
    
    var body: some View {
        VStack {
            // App title components
            Text("Connecto")
                .font(.largeTitle)
            
            // Login form components
            Form {
                // Username field components
                TextField(
                    text: $username,
                    prompt: Text("Username")
                ) {
                    Text("Username")
                }
                .disableAutocorrection(true)
                .textInputAutocapitalization(.never)
                
                //-------------------------------
                // Password field components
                SecureField(
                    text: $password,
                    prompt: Text("Password")
                ) {
                    Text("Password")
                }
                .disableAutocorrection(true)
                .textInputAutocapitalization(.never)
                
                Button("Log in") {
                    // Submit logic goes here
                }
                
            //-------------------------------
            // Entire Form design features
            }
        //-------------------------------
        // Entire VStack design features
        }
        .textFieldStyle(.roundedBorder)
        .formStyle(.columns)
        
    }
}

#Preview {
    ContentView()
}
