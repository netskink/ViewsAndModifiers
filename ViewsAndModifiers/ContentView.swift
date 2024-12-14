//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by john davis on 11/14/24.
//

import SwiftUI



struct CapsuleText: View {
    var text: String

    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .foregroundStyle(.white)
            .background(.blue)
            .clipShape(.capsule)
    }
}

struct ContentView: View {
    
    
    var body: some View {
        Text("Hello World")
        .padding()
        .background(Color.blue)
        .padding()
        .background(Color.green)
        .padding()
        .background(Color.yellow)
        .padding()
        .background(Color.red)
    }
}

#Preview {
    ContentView()
}
